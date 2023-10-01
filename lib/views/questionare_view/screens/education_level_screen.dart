import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/questionare_view/widgets/purple_cell.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class education_Level extends StatelessWidget {
  education_Level({super.key});
  final List<String> education = [
    "Associate of Arts (AA)",
    "Associate of Applied Arts (AAA)",
    "Associate of Engineering (AE)",
    "Bachelor of Arts (BA)",
    "Bachelor of Business Administration (BBA)",
    "Bachelor of Engineering (BEng)",
    "Bachelor of Fine Arts (BFA)",
    "Doctor of Dental Medicine (DDM)",
    "Doctor of Medicine (MD)",
    "Juris Doctor (JD)",
    "Master of Arts (MA)",
    "Master of Business Administration (MBA)",
    "Master of Engineering (MEng)",
    "Associate of Arts (AA)",
    "Associate of Applied Arts (AAA)",
    "Associate of Engineering (AE)",
    "Bachelor of Arts (BA)",
    "Bachelor of Business Administration (BBA)",
    "Bachelor of Engineering (BEng)",
    "Bachelor of Fine Arts (BFA)",
    "Doctor of Dental Medicine (DDM)",
    "Doctor of Medicine (MD)",
    "Juris Doctor (JD)",
    "Master of Arts (MA)",
    "Master of Business Administration (MBA)",
    "Master of Engineering (MEng)",
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
            child: Image.asset(
              ImagePath.next,
              width: 20,
              height: 20,
            ),
          ),
        ], // Centered text
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
                    'What is your education?',
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
                          hintText: 'Select your education',
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
                  itemCount: education
                      .length, // Replace with the actual item count
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 7),
                      child: Text(
                        education[index], // Replace with the item text
                        style: const TextStyle(
                            fontSize: 16), // Customize text style as needed
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(color: AppColor.bottomNavigationBar),
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 18, vertical: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
