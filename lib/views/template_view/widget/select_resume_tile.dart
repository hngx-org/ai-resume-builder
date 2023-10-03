import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/preview_view/screens/preview_screen.dart';
import 'package:ai_resume_builder/views/questionare_view/screens/desired_role.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';

class SelectResumeTile extends StatelessWidget {
  const SelectResumeTile(
      {super.key, required this.data, required this.templateTheme});

  final TemplateData data;
  final TemplateTheme templateTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whitishBgColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(
          children: [
            // Image.asset(
            //   ImagePath.coloredResume,
            //   height: 400,
            //   width: double.maxFinite,
            //   fit: BoxFit.fill,
            //   filterQuality: FilterQuality.high,
            // ),
            SingleChildScrollView(
              child: SizedBox(
                child: FlutterResumeTemplate(
                  mode: TemplateMode.readOnlyMode,
                  templateTheme: templateTheme,
                  data: data,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 12,
            // ),
            _chooseToCreate(
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
            const SizedBox(
              height: 10,
            ),
            _chooseToCreate(
              image: ImagePath.pencil,
              text: 'Create Resume\nFrom Scratch',
              color: AppColor.upgradeToProDarkMode,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PreviewScreen(templateTheme: templateTheme,),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _chooseToCreate(
      {required String image,
      required String text,
      required Color color,
      String? subText,
      required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        height: 55,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
            const Spacer(),
            if (subText != null) // Conditionally include subText
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subText,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                      color: AppColor.recommendText,
                    ),
                  ),
                ],
              ),
            const SizedBox(
              width: 30,
            ),
            const Icon(
              CupertinoIcons.forward,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
