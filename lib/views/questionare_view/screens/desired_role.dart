import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/questionare_view/screens/work_experience.dart';
import 'package:ai_resume_builder/views/questionare_view/widgets/purple_cell.dart';
import 'package:flutter/material.dart';

// class RoleScreen extends StatelessWidget {
//   RoleScreen({super.key});
//   // ignore: non_constant_identifier_names
//   final List<String> job_Categories = [
//   "Accountant",
//   "Architect",
//   "Chef",
//   "Data Analyst",
//   "Electrician",
//   "Financial Analyst",
//   "Graphic Designer",
//   "Human Resources Manager",
//   "IT Consultant",
//   "Journalist",
//   "Marketing Manager",
//   "Nurse",
//   "Operations Manager",
//   "Quality Assurance Specialist",
//   "Accountant",
//   "Software Engineer",
//   "Product Manager",
//   "Web Developer",
//   "Network Engineer",
//   "Teacher",
//   "Doctor",
//   "Lawyer",
//   "Police Officer",
//   "Artist",
//   "Mechanical Engineer",
//   "Civil Engineer",
//   "Psychologist",
//   "Social Worker",
//   "Dentist",
//   "Pharmacist",
//   "Electrician",
//   "Plumber",
//   "Sales Manager",
//   "Project Manager",
//   "Financial Planner",
//   "Marketing Coordinator",
//   "Data Scientist",
//   "UI/UX Designer",
//   "Environmental Scientist",
//   "Event Planner",
//   "Human Resources Specialist",
//   "Content Writer",
//   "Digital Marketing Specialist",
//   "Mechanic",
//   "Research Scientist",
//   "Business Analyst",
//   "Customer Service Representative",
//   "Pharmacy Technician",
//   "Security Guard",
// ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//         backgroundColor: Colors.black,
//         elevation: 0.0,
//         // leading: const Center(
//         //   child: Text(
//         //     "Skip",
//         //     style: TextStyle(
//         //       fontSize: 13,
//         //       fontFamily: 'Inter',
//         //       fontWeight: FontWeight.w400,
//         //       height: 0,
//         //       letterSpacing: 0.20,
//         //     ),
//         //   ),
//         // ), // Leading text
//         title: const Text(
//           "Resume Questions",
//           style: TextStyle(
//             fontSize: 20,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w700,
//             height: 0,
//             letterSpacing: 0.30,
//           ),
//         ), // Centered text
//         centerTitle: true, // Center the title text
//       ),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               const PurpleCell(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 33, vertical: 12),
//                   child: Text(
//                     'What is your desired job role category?',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                       fontFamily: 'Inter',
//                       fontWeight: FontWeight.w600,
//                       height: 0,
//                       letterSpacing: 0.21,
//                     ),
//                   ),
//                 ),
//               ),
//               PurpleCell(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
//                   child: Container(
//                     width: double.infinity,
//                     height: 36,
//                     decoration: ShapeDecoration(
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         side: BorderSide.none, // Remove border line
//                       ),
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8),
//                       child: TextField(
//                         cursorColor: Color(0xFF7851A9), // Set cursor color
//                         decoration: InputDecoration(
//                           hintText: 'Select your job category',
//                           border: InputBorder.none, // Remove border line
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 7,
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   shrinkWrap:
//                       true, // To make the ListView take only the space it needs
//                   itemCount: job_Categories
//                       .length, // Replace with the actual item count
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 25, vertical: 7),
//                       child: Text(
//                         job_Categories[index], // Replace with the item text
//                         style: const TextStyle(
//                             fontSize: 16), // Customize text style as needed
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         padding: const EdgeInsets.symmetric(horizontal: 18),
//         decoration: BoxDecoration(color: AppColor.bottomNavigationBar),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               'Skip',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 13,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight.w400,
//                 height: 0,
//                 letterSpacing: 0.20,
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => WorkExperienceScreen(),
//                   ),
//                 );
//               },
//               child: Image.asset(
//                 ImagePath.next,
//                 width: 22,
//                 height: 22,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
    "Accountant",
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
                  shrinkWrap: true,
                  itemCount: jobCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    final category = jobCategories[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 7),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = category;
                            textEditingController.text = ""; // Clear text field
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: category == selectedCategory
                                ? Colors.purple // Highlight selected category
                                : Colors.transparent,
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                              fontSize: 16,
                              color: category == selectedCategory
                                  ? Colors.white
                                  : Colors.black,
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
                ImagePath.back,
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
