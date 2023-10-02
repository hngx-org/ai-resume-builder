import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/questionare_view/widgets/purple_cell.dart';
import 'package:flutter/material.dart';
import 'Select_skill_screen.dart';

class EducationLevelScreen extends StatefulWidget {
  const EducationLevelScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EducationLevelScreenState createState() => _EducationLevelScreenState();
}

class _EducationLevelScreenState extends State<EducationLevelScreen> {
  String selectedEducation = ""; // Track the selected education
  TextEditingController textEditingController = TextEditingController();

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
    "Associate of Science (AS)",
    "Master of Science (MS)",
    "Doctor of Philosophy (Ph.D.)",
    "Bachelor of Science (BS)",
    "Doctor of Education (Ed.D.)",
    "Master of Public Health (MPH)",
    "Bachelor of Computer Science (BCS)",
    "Master of Social Work (MSW)",
    "Bachelor of Science in Nursing (BSN)",
    "Bachelor of Architecture (BArch)",
    "Doctor of Veterinary Medicine (DVM)",
    "Bachelor of Music (BM)",
    "Master of Music (MM)",
    "Doctor of Pharmacy (Pharm.D.)",
    "Master of Fine Arts (MFA)",
    "Bachelor of Science in Psychology (BSc)",
    "Master of Public Administration (MPA)",
    "Associate of Science in Engineering (ASE)",
    "Master of Computer Science (MCS)",
    "Doctor of Dental Surgery (DDS)",
    "Bachelor of Science in Mathematics (BS Math)",
    "Master of Education (M.Ed.)",
    "Master of Architecture (MArch)",
    "Doctor of Science (Sc.D.)",
    "Bachelor of Science in Chemistry (BS Chem)",
    "Doctor of Psychology (Psy.D.)",
    "Master of Divinity (M.Div.)",
    "Bachelor of Science in Physics (BS Physics)",
    "Doctor of Physical Therapy (DPT)",
    "Master of Accounting (MAcc)",
    "Master of Fine Arts in Creative Writing (MFA Creative Writing)",
    "Bachelor of Science in Environmental Science (BS Environmental Science)",
    "Doctor of Public Health (DrPH)",
    "Master of Health Administration (MHA)",
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
        ),
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
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SelectSkillScreen(),
                ),
              ),
              child: Image.asset(
                ImagePath.next,
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
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
                        side: BorderSide.none,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        controller: textEditingController,
                        cursorColor: const Color(0xFF7851A9),
                        decoration: const InputDecoration(
                          hintText: 'Search your education',
                          border: InputBorder.none,
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
                  itemCount: education.length,
                  itemBuilder: (BuildContext context, int index) {
                    final selected = education[index] == selectedEducation;
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedEducation =
                              selected ? "" : education[index];
                          textEditingController.text = selectedEducation;
                        });
                      },
                      child: Container(
                        color: selected ? Colors.purple : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 7),
                          child: Text(
                            education[index],
                            style: TextStyle(
                              fontSize: 16,
                              color: selected ? Colors.white : Colors.black,
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SelectSkillScreen(),
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
