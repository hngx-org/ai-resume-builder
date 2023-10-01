import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/my_resume_card_widget.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/resume_screen_header.dart';
import 'package:flutter/material.dart';

class MyResumeScreen extends StatelessWidget {
  const MyResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppHeader(text: "My Resumes",),
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
