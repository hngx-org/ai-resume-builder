// import 'package:ai_resume_builder/views/template_view/widget/template_tile.dart';

import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/views/template_view/data/template_data.dart';
import 'package:ai_resume_builder/views/template_view/screens/select_resume_mode_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';

List<TemplateTheme> templateThemeList = [
  TemplateTheme.business,
  TemplateTheme.classic,
  TemplateTheme.modern,
  TemplateTheme.technical,
];

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.selectedItem,
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
      // body: const TemplatesTile(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 12.0,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            // final randomThemeIndex =
            //     Random().nextInt(templateThemeList.length);
            TemplateTheme templateTheme = templateThemeList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SelectResumeModeScreen(
                      data: data,
                      templateTheme: templateTheme,
                    ),
                  ),
                );
              },
              child: SizedBox(
                child: FlutterResumeTemplate(
                  backgroundColor: Colors.white,
                  mode: TemplateMode.readOnlyMode,
                  templateTheme: templateTheme,
                  data: data,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
