import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/sign_in_screen.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/sign_up_screen.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/form_button1.dart';
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
            FormButton1(
              text: "Sign Up",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpView();
                }));
              },
            ),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignInView();
                  }));
                },
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
