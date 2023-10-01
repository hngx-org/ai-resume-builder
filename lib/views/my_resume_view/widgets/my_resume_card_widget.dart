import 'package:ai_resume_builder/constant/colors.dart';
import 'package:flutter/material.dart';

class MyResumeCardWidget extends StatelessWidget {
  const MyResumeCardWidget({
    super.key,
    required this.resumeImage,
  });

  final ImageProvider resumeImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColor.selectedItem,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Image(
            image: resumeImage,
            width: 200,
          )),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.download,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Download",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
