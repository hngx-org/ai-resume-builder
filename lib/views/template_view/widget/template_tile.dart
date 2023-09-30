import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/template_view/screens/select_resume_mode_screen.dart';
import 'package:flutter/material.dart';

class TemplatesTile extends StatelessWidget {
  const TemplatesTile({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> templatesData = [
      ImagePath.blackAndWhiteResume,
      ImagePath.coloredResume,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 12.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SelectResumeModeScreen(),
                ),
              );
            },
            child: Image.asset(
              templatesData[index % templatesData.length],
              height: 265,
              width: 160,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
