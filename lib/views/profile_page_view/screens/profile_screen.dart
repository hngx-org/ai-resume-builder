import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/resume_screen_header.dart';
import 'package:flutter/material.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppHeader(
        text: "Profile",
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.upgradeToProLightMode,
                      ),
                      child: const Text(
                        "Upgrade to a pro account today!",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Image(
                        image: AssetImage(
                          ImagePath.crown,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColor.profileDetailsCon,
                border: Border.all(
                  width: 1,
                  color: AppColor.selectedItem,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "johndoe911@gmail.com",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Theme: Light",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Logout",
              style: TextStyle(
                color: AppColor.logOutText,
                fontSize: 14,
                fontFamily: "Inter",
              ),
            )
          ],
        ),
      ),
    );
  }
}
