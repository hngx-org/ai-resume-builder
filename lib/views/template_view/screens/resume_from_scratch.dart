import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/views/template_view/data/template_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';

class TemplateThemeNoneScreen extends StatelessWidget {
  const TemplateThemeNoneScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.black,
        title: const Text('Create Resume',
         style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Inter'),
        ),
      ),
      body: Center(
        child: FlutterResumeTemplate(
          templateTheme: TemplateTheme.none,
          mode: TemplateMode.readOnlyMode,
          data: data, // Replace with your data
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the edit action here
        },
        backgroundColor:AppColor.bottomNavigationBar,
        child: const Icon(Icons.edit,
        )
      ),
    );
  }
}
