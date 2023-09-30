import 'package:ai_resume_builder/constant/brain.dart';
import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/constant/sizedboxes.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/form_button1.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/text_input_widget1.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "logo",
                  child: Image(
                    image: AssetImage(
                      ImagePath.logo,
                    ),
                    width: 120,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: AppColor.bottomNavigationBar,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Inter",
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextInputWidget1(
                  hintText: "E-mail Address",
                  keyboardType: TextInputType.text,
                ),
                SizedBoxes.sizedBox10,
                SizedBox(
                  height: 55,
                  child: TextField(
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    keyboardType: TextInputType.text,
                    obscureText: obscureText,
                    cursorColor: AppColor.bottomNavigationBar,
                    style: TextStyle(
                      color: AppColor.bottomNavigationBar,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Color(0xFF606060),
                        fontFamily: "Inter",
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(3),
                        ),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: AppColor.bottomNavigationBar,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(3),
                        ),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: AppColor.bottomNavigationBar,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(3),
                        ),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.bottomNavigationBar,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: IconButton(
                          icon: Icon(
                            obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          color: AppColor.bottomNavigationBar,
                          onPressed: () {
                            setState(() {
                              toggle();
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBoxes.sizedBox10,
                FormButton1(text: "Sign In", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
