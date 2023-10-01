import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/questionare_view/screens/work_experience.dart';
import 'package:ai_resume_builder/views/questionare_view/widgets/purple_cell.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class RoleScreen extends StatelessWidget {
  RoleScreen({super.key});
  final List<String> job_Categories = [
    "Accountant",
    "Architect",
    "Chef",
    "Data Analyst",
    "Electrician",
    "Financial Analyst",
    "Graphic Designer",
    "Human Resources Manager",
    "IT Consultant",
    "Journalist",
    "Marketing Manager",
    "Nurse"
        "Operations Manager",
    "Quality Assurance Specialist",
    "Accountant",
    "Architect",
    "Chef",
    "Data Analyst",
    "Electrician",
    "Financial Analyst",
    "Graphic Designer",
    "Human Resources Manager",
    "IT Consultant",
    "Journalist",
    "Marketing Manager",
    "Nurse"
        "Operations Manager",
    "Quality Assurance Specialist",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
        // leading: const Center(
        //   child: Text(
        //     "Skip",
        //     style: TextStyle(
        //       fontSize: 13,
        //       fontFamily: 'Inter',
        //       fontWeight: FontWeight.w400,
        //       height: 0,
        //       letterSpacing: 0.20,
        //     ),
        //   ),
        // ), // Leading text
        title: const Text(
          "Resume Questions",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.30,
          ),
        ), // Centered text
        centerTitle: true, // Center the title text
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const PurpleCell(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33, vertical: 12),
                  child: Text(
                    'What is your desired job role category?',
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
              PurpleCell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Container(
                    width: double.infinity,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide.none, // Remove border line
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        cursorColor: Color(0xFF7851A9), // Set cursor color
                        decoration: InputDecoration(
                          hintText: 'Select your job category',
                          border: InputBorder.none, // Remove border line
                        ),
                      ),
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
                      true, // To make the ListView take only the space it needs
                  itemCount: job_Categories
                      .length, // Replace with the actual item count
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 7),
                      child: Text(
                        job_Categories[index], // Replace with the item text
                        style: const TextStyle(
                            fontSize: 16), // Customize text style as needed
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          // Container(
          //   width: 360,
          //   height: 50,
          //   decoration: BoxDecoration(color: AppColor.bottomNavigationBar),
          //   child: Padding(
          //     padding:
          //         const EdgeInsets.symmetric(horizontal: 18, vertical: 19),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         const Text(
          //           'Skip',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 13,
          //             fontFamily: 'Inter',
          //             fontWeight: FontWeight.w400,
          //             height: 0,
          //             letterSpacing: 0.20,
          //           ),
          //         ),
          //         InkWell(
          //           onTap: () {
          //             Navigator.of(context).push(
          //               MaterialPageRoute(
          //                 builder: (context) => work_Experience(),
          //               ),
          //             );
          //           },
          //           child: Image.asset(
          //             ImagePath.next, // Replace with your image asset path
          //             width: 35, // Adjust the width as needed
          //             height: 40, // Adjust the height as needed
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(color: AppColor.bottomNavigationBar),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Skip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 0.20,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WorkExperienceScreen(),
                  ),
                );
              },
              child: Image.asset(
                ImagePath.next, // Replace with your image asset path
                width: 22, // Adjust the width as needed
                height: 22, // Adjust the height as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
