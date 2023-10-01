import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Preview',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              ImagePath.download,
              width: 22,
              height: 22,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: _previewResume(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          size: 25,
        ),
        backgroundColor: AppColor.upgradeToProDarkMode,
      ),
    );
  }

  Widget _previewResume() {
    return Image.asset(
      ImagePath.coloredResume,
      height: 400,
      width: double.maxFinite,
      fit: BoxFit.fill,
    );
  }
}
