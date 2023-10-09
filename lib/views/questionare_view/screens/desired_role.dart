import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/questionare_view/screens/work_experience.dart';
import 'package:ai_resume_builder/views/questionare_view/widgets/purple_cell.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../landing-signup-signin_view/screens/cookie_state.dart';

class RoleScreen extends StatefulWidget {
  const RoleScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RoleScreenState createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
  String selectedCategory = ""; // Track the selected category
  TextEditingController textEditingController = TextEditingController();

  final List<String> jobCategories = [
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
    "Nurse",
    "Operations Manager",
    "Quality Assurance Specialist",
    "Software Engineer",
    "Product Manager",
    "Web Developer",
    "Network Engineer",
    "Teacher",
    "Doctor",
    "Lawyer",
    "Police Officer",
    "Artist",
    "Mechanical Engineer",
    "Civil Engineer",
    "Psychologist",
    "Social Worker",
    "Dentist",
    "Pharmacist",
    "Electrician",
    "Plumber",
    "Sales Manager",
    "Project Manager",
    "Financial Planner",
    "Marketing Coordinator",
    "Data Scientist",
    "UI/UX Designer",
    "Environmental Scientist",
    "Event Planner",
    "Human Resources Specialist",
    "Content Writer",
    "Digital Marketing Specialist",
    "Mechanic",
    "Research Scientist",
    "Business Analyst",
    "Customer Service Representative",
    "Pharmacy Technician",
    "Security Guard",
  ];

  @override
  Widget build(BuildContext context) {
    void _share() {
      final sharedData = Provider.of<SharedData>(context, listen: false);
      sharedData.updateDataFromdatafromdesiredrole(selectedCategory);
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        controller: textEditingController,
                        cursorColor:
                            const Color(0xFF7851A9), // Set cursor color
                        decoration: const InputDecoration(
                          hintText: 'Enter your job category',
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
                  shrinkWrap: true,
                  itemCount: jobCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    final category = jobCategories[index];
                    final isSelected = category == selectedCategory;

                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedCategory =
                                ""; // Deselect if already selected
                            textEditingController.clear();
                          } else {
                            selectedCategory = category;
                            textEditingController.text = category;
                          }
                        });
                        _share();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.upgradeToProDarkMode
                              : Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 7),
                          child: Text(
                            category,
                            style: TextStyle(
                              fontSize: 16,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
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
                    builder: (context) => const WorkExperienceScreen(),
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
