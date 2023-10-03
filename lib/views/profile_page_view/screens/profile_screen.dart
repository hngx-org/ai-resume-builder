import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/resume_screen_header.dart';
import 'package:flutter/material.dart';

import '../../landing-signup-signin_view/screens/landing_page.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key, });

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  bool isPaid = false; // Initialize as false (free plan)

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
                    const SizedBox(height: 15),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: isPaid
                            ? AppColor.createResumeWithAI
                            : AppColor.upgradeToProLightMode,
                      ),
                      child: Text(
                        isPaid
                            ? "Hurray you are already a pro user!"
                            : "Upgrade to a pro account today!",
                        style: const TextStyle(
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Add other profile details here
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Toggle the user's plan (free/pro) when the button is clicked
                setState(() {
                  isPaid = !isPaid;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  isPaid ? Colors.red : Colors.green, // Change button color
                ),
              ),
              child: Text(
                isPaid ? "Switch to Free Plan" : "Switch to Pro Plan",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
              // Navigate to a new screen without the back button
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const LandingPageView(); // Replace with your logout screen
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return child;
                  },
                ),
              );
            },
              child: Text(
                "Logout",
                style: TextStyle(
                  color: AppColor.logOutText,
                  fontSize: 14,
                  fontFamily: "Inter",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}