import 'package:flutter/material.dart';
import '../../../constant/colors.dart';
import '../../../constant/image_path.dart';
import '../../questionare_view/screens/desired_role.dart';
import '../widget/chooseToCreate.dart';
import 'resume_edit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Resume Pro',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Inter",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Craft Your Professional Resume with AI',
                style: TextStyle(
                  //color: Colors.white, // Text color
                  fontSize: 30.0, // Font size
                  fontWeight: FontWeight.bold, // Bold text
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: DefaultTextStyle(
                  style:  TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                    color: AppColor.upgradeToProDarkMode,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Unleash your potential and land your dream job with ease. \n \n Our AI-powered resume builder makes it simple to create impressive resumes that get noticed by employers.',
                         speed: const Duration(milliseconds: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     'Unleash your potential and land your dream job with ease. \n \n Our AI-powered resume builder makes it simple to create impressive resumes that get noticed by employers.',
            //     style: TextStyle(
            //         color: Color.fromARGB(255, 109, 101, 196), // Text color
            //         fontSize: 20.0,
            //         fontStyle: FontStyle.italic // Font size
            //         ),
            //   ),
            // ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: chooseToCreate(
                image: ImagePath.chatGpt,
                text: 'Create Resume\nWith Ai',
                color: AppColor.createResumeWithAI,
                subText: 'Recommended',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RoleScreen(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: chooseToCreate(
                image: ImagePath.pencil,
                text: 'Create Resume\nFrom Scratch',
                color: AppColor.upgradeToProDarkMode,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PdfCreationPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

      // body: const TemplatesTile(),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView.builder(
      //       scrollDirection: Axis.vertical,
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         childAspectRatio: 0.8,
      //         mainAxisSpacing: 8.0,
      //         crossAxisSpacing: 12.0,
      //       ),
      //       itemCount: 4,
      //       itemBuilder: (context, index) {
      //         // final randomThemeIndex =
      //         //     Random().nextInt(templateThemeList.length);
      //         TemplateTheme templateTheme = templateThemeList[index];
      //         return GestureDetector(
      //           onTap: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (_) => SelectResumeModeScreen(
      //                   data: data,
      //                   templateTheme: templateTheme,
      //                 ),
      //               ),
      //             );
      //           },
      //           child: SizedBox(
      //             child: FlutterResumeTemplate(
      //               backgroundColor: Colors.white24,
      //               mode: TemplateMode.readOnlyMode,
      //               templateTheme: templateTheme,
      //               data: data,
      //             ),
      //           ),
      //         );
      //       }),
      // ),
