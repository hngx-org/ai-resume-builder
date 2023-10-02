import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/questionare_view/widgets/purple_cell.dart';
import 'package:flutter/material.dart';

class SelectSkillScreen extends StatefulWidget {
  const SelectSkillScreen({Key? key}) : super(key: key);

  @override
  _SelectSkillScreenState createState() => _SelectSkillScreenState();
}

class _SelectSkillScreenState extends State<SelectSkillScreen> {
  String selectedSkill = ""; // Track the selected skill
  TextEditingController textEditingController = TextEditingController();

  final List<String> skills = [
    'HTML/CSS',
    'Adobe Illustrator',
    'Rive',
    'Canva',
    'Flutter',
    'Dart',
    'JavaScript',
    'Communication',
    'Problem Solving',
    'Creativity',
    'Leadership',
    'Tailwind CSS',
    'Figma',
    'React',
    'Node.js',
    'Python',
    'Java',
    'Git',
    'UI/UX Design',
    'Android Development',
    'iOS Development',
    'Data Analysis',
    'Machine Learning',
    'Artificial Intelligence',
    'Database Design',
    'Network Security',
    'Digital Marketing',
    'Content Writing',
    'Video Editing',
    'Photography',
    'Product Management',
    'Project Management',
    'Customer Service',
    'Financial Analysis',
    'E-commerce',
    'Cloud Computing',
    'Cybersecurity',
    'Game Development',
    'Graphic Design',
    'User Research',
    'Time Management',
    'Critical Thinking',
    'Conflict Resolution',
    'Event Planning',
    'Search Engine Optimization (SEO)',
    'Market Research',
    'Medical Research',
    'Public Speaking',
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
                    'What is your skills?',
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
                        cursorColor: const Color(0xFF7851A9), // Set cursor color
                        decoration: const InputDecoration(
                          hintText: 'Enter your skills here',
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
                  itemCount: skills.length,
                  itemBuilder: (BuildContext context, int index) {
                    final skill = skills[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 7),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedSkill = skill;
                            textEditingController.text = ""; // Clear text field
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: skill == selectedSkill
                                ? AppColor.upgradeToProDarkMode // Highlight selected skill
                                : Colors.transparent,
                          ),
                          child: Text(
                            skill,
                            style: TextStyle(
                              fontSize: 16,
                              color: skill == selectedSkill
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
                // Implement your logic here when the Next button is pressed
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
