import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:flutter/material.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Hero(
                  tag: "logo",
                  child: Image(
                    image: AssetImage(
                      ImagePath.logo,
                    ),
                    width: 60,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "ResumePro",
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColor.bottomNavigationBar,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        3.0,
                      ),
                    ),
                  ),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      width: 1,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        3.0,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: AppColor.bottomNavigationBar,
                    fontSize: 15,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
