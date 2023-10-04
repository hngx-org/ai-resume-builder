import 'package:ai_resume_builder/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'dart:io';
import 'dart:async';

class PdfCreationPage extends StatefulWidget {
  final String initialText;

  PdfCreationPage({this.initialText = ''});

  @override
  // ignore: library_private_types_in_public_api
  _PdfCreationPageState createState() => _PdfCreationPageState();
}

class _PdfCreationPageState extends State<PdfCreationPage> {
  TextEditingController textEditingController = TextEditingController();
  PdfDocument document = PdfDocument();
  FocusNode focusNode = FocusNode();
  bool isFocused = false, isFilled = true;
  Color fillColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    document = PdfDocument();
    textEditingController = TextEditingController(text: widget.initialText);
    focusNode = FocusNode();
    _loadResumeText(); // Load resume text when the page is created
  }

  // Function to load resume text from "format.txt" asset
  Future<void> _loadResumeText() async {
    const String assetPath = 'assets/documents/format.txt';
    final String resumeText = await rootBundle.loadString(assetPath);
    setState(() {
      textEditingController.text = resumeText;
    });
  }

  void _createPdf() async {
    final page = document.pages.add();
    final graphics = page.graphics;
    final text = textEditingController.text; // Ensure text is not null

    graphics.drawString(
      text,
      PdfStandardFont(PdfFontFamily.helvetica, 12),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)),
      bounds: const Rect.fromLTWH(0, 0, 150, 20),
    );

    // Save the document as a file
    final bytes = await document.save();
    final file = File('HelloWorld.pdf');
    await file.writeAsBytes(bytes);

    // Dispose the document to release resources
    document.dispose();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        ),
        body: Center(
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
          backgroundColor: AppColor.upgradeToProDarkMode, // Change the background color
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}
