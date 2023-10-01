// ignore_for_file: camel_case_types
import 'package:ai_resume_builder/views/questionare_view/screens/education_level_screen.dart';
import 'package:flutter/material.dart';
import '../../../constant/colors.dart';
import '../../../constant/image_path.dart';
import '../widgets/purple_cell.dart';

class WorkExperienceScreen extends StatelessWidget {
  WorkExperienceScreen({super.key});
  final List<String> experience = [
    "Entry-Level (0-2 years)",
    "Mid-Level (2-5 years)",
    "Senior-Level (5-10 years)",
    "Executive-level (10+ years)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: Center(
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset(
              ImagePath.back,
              width: 20,
              height: 20,
            ),
          ),
        ), // Leading text
        title: const Text(
          "Resume Questions",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: InkWell(
              onTap: () {
               Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EducationLevelScreen(),
                  ),
                );
              },
              child: Image.asset(
                ImagePath.next,
                width: 20,
                height: 20,
              ),
            ),
          ),
        ], // Centered text
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const PurpleCell(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33, vertical: 12),
                  child: Text(
                    'What is your level of work experience?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.21,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap:
                      true, 
                  itemCount:
                      experience.length, 
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 7),
                      child: Text(
                        experience[index], 
                        style: const TextStyle(
                            fontSize: 16),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(color: AppColor.bottomNavigationBar),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                ImagePath.back, 
                width: 22,
                height: 22, 
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EducationLevelScreen(),
                  ),
                );
              },
              child: Image.asset(
                ImagePath.next, 
                width: 22, 
                height: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
