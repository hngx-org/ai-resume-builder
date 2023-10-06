import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/view_models/providers/auth_provider.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/landing_page.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/resume_screen_header.dart';
import 'package:ai_resume_builder/views/payment_view/screens/payment_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';
import 'package:provider/provider.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  bool isPaid = false;

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: const CustomAppHeader(
        text: "Profile",
        color: Colors.black,
        textColor: Colors.white,
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PaymentScreen();
                    }));
                  },
                  child: Stack(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authProvider.user!.name.toString().toUpperCase(),
                    style: const TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    authProvider.user!
                        .email, // Use userEmail if not null, otherwise use an empty string
                    style: const TextStyle(
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
            // ElevatedButton(
            //   onPressed: () {
            //     // Toggle the user's plan (free/pro) when the button is clicked
            //     setState(() {
            //       isPaid = !isPaid;
            //     });
            //   },
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(
            //       isPaid ? Colors.red : Colors.green, // Change button color
            //     ),
            //   ),
            //   child: Text(
            //     isPaid ? "Switch to Free Plan" : "Switch to Pro Plan",
            //     style: const TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () async {
                try {
                  if (kDebugMode) {
                    print("1");
                  }
                  if (authProvider.user!.email != null) {
                    final authRepository = Authentication();
                    await authRepository.logout(authProvider
                        .user!.email); // Use non-null assertion operator
                    if (kDebugMode) {
                      print("2");
                    }
                    if (kDebugMode) {
                      print(authProvider.user!.email.toString());
                    }

                    // ignore: use_build_context_synchronously
                    showReusableDialog(context, 'Logging out');
                    await Future.delayed(const Duration(seconds: 2));
                    Navigator.pushAndRemoveUntil(
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
                      (route) => false,
                    );

                    if (kDebugMode) {
                      print("success");
                    }
                  } else {
                    if (kDebugMode) {
                      print("userEmail is null");
                    } // Handle the case where userEmail is null
                  }
                } catch (e) {
                  if (kDebugMode) {
                    print(e.toString());
                  }
                }
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
