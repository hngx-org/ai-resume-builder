import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/my_resume_card_widget.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/resume_screen_header.dart';
import 'package:flutter/material.dart';

class MyResumeScreen extends StatelessWidget {
  MyResumeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('Checking list : ${pdfHandler.savedPdfList.length}');
    print('Checking list2 : ${pdfHandler.savedPdfList}');
    return Scaffold(
      appBar: const CustomAppHeader(
        text: "My Resumes",
      ),
      // body: pdfHandler.savedPdfList.isEmpty
      //     ? const Center(
      //         child: Text('No saved resume'),
      //       )
      //     : ListView.builder(
      //         itemCount: pdfHandler.savedPdfList.length,
      //         itemBuilder: (context, index) {
      //           final pdfMetadata = pdfHandler.savedPdfList[index];
      //           return ListTile(
      //             title: Text(pdfMetadata.fileName),
      //             subtitle: Text('Created at : ${pdfMetadata.dateSaved}'),
      //             onTap: () async {
      //               try {
      //                 if (await File(pdfMetadata.filePath).exists()) {
      //                   await OpenFile.open(pdfMetadata.filePath);
      //                 } else {
      //                   const Text('No data');
      //                 }
      //               } catch (e) {
      //                 // Handle any exceptions that occur during file opening
      //                 print('Error opening file: $e');
      //               }
      //             },
      //           );
      //         },
      //       ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: ListView(
          children: [
            MyResumeCardWidget(
              resumeImage: AssetImage(ImagePath.blackAndWhiteResume),
            ),
            MyResumeCardWidget(
              resumeImage: AssetImage(ImagePath.coloredResume),
            ),
            MyResumeCardWidget(
              resumeImage: AssetImage(ImagePath.blackAndWhiteResume),
            ),
            MyResumeCardWidget(
              resumeImage: AssetImage(ImagePath.coloredResume),
            ),
          ],
        ),
      ),
    );
  }
}
