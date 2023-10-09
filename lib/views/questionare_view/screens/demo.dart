// ignore_for_file: unused_local_variable
import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/models/user_data.dart';
import 'package:ai_resume_builder/view_models/providers/auth_provider.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/cookie_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hngx_openai/repository/openai_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class AiPdfCreationPage extends StatefulWidget {
  final String initialText;

  const AiPdfCreationPage(
      {super.key,
      this.initialText = "Click on the Refresh Icon to load your Resume"});

  @override
  // ignore: library_private_types_in_public_api
  _PdfCreationPageState createState() => _PdfCreationPageState();
}

class _PdfCreationPageState extends State<AiPdfCreationPage> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  PdfDocument document = PdfDocument();
  FocusNode focusNode = FocusNode();
  bool isFocused = false, isFilled = true;
  Color fillColor = Colors.transparent;
  bool isGettingData = false;

  @override
  void initState() {
    super.initState();
    document = PdfDocument();
    textEditingController = TextEditingController(text: widget.initialText);
    focusNode = FocusNode();
    // _incrementCounter(); // Load resume text when the page is created
  }

  void _createPdf() async {
    final page = document.pages.add();
    final graphics = page.graphics;

    final text = textEditingController.text;

    final font = PdfStandardFont(PdfFontFamily.helvetica, 12);

    final layoutFormat = PdfLayoutFormat(layoutType: PdfLayoutType.paginate);

    final bounds = Rect.fromLTWH(0, 0, page.getClientSize().width, -1);

    try {
      final textElement = PdfTextElement(
        text: text,
        font: font,
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
      );

      final layoutResult = textElement.draw(
        page: page,
        bounds: bounds,
        format: layoutFormat,
      );

      final directory = await getExternalStorageDirectory();
      // Save the document as a file
      List<int> bytes = await document.save();
      document.dispose();
      pdfHandler.saveAndLaunchFile(bytes, 'Output.pdf');
    } catch (e) {
      if (kDebugMode) {
        print('This >>>>>${e.toString()}');
      }
    }
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sharedData = Provider.of<SharedData>(context);
    final authProvider = Provider.of<AuthProvider>(context);

// Access the shared data
    String education = sharedData.selectedEduction;
    String role = sharedData.selectedRole;
    String skill = sharedData.selectedSkill;
    String experience = sharedData.selectedWork;

    print('Eduction : $education');
    print('role : $role');
    print('skill : $skill');
    print('experience : $experience');

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(focusNode);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Resume Preview',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                setState(() {
                  isGettingData = true;
                });
                String userInput =
                    "write a very full and complex resume that entails everything that an employer is looking for i will supply you with some data, but if by any chance, you need any data i didnt supply, you can add dummy data yourself. now, my name is ${UserData.userData['name'].toString()}, my academic qualification is $education, the role am appling for is $role, i have experience years of $experience in this field, additional skills are $skill. so help me construct it in full thanks.";
                String cookie = UserData.userData['cookie'].toString();
                print('My Cookie ====> $cookie');

                // Instantiate OpenAIRepository
                OpenAIRepository openAI = OpenAIRepository();

                // For initiating a new chat
                final aiResponse = await openAI.getChat(userInput, cookie);
                // For getting chat completions
                List<String> history = [
                  "What is my name",
                  "How are you today?"
                ];
                final response =
                    await openAI.getChatCompletions(history, userInput, cookie);

                setState(() {
                  print("before");
                  isGettingData = false;
                  print("after");
                  textEditingController.text = aiResponse;
                });
              },
              icon: const Icon(
                Icons.refresh,
              ),
            ),
          ],
        ),
        body: isGettingData
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitDoubleBounce(
                    color: AppColor.bottomNavigationBar,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Generating resume...",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              )
            : Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EditableText(
                    maxLines: 1000,
                    controller: textEditingController,
                    focusNode: focusNode,
                    backgroundCursorColor: Colors.black,
                    cursorColor: Colors.black,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: _createPdf,
          backgroundColor:
              AppColor.upgradeToProDarkMode, // Change the background color
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}
