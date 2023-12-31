// ignore_for_file: avoid_print, use_build_context_synchronously

// import 'dart:convert';

import 'package:ai_resume_builder/constant/brain.dart';
import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/constant/sizedboxes.dart';
import 'package:ai_resume_builder/view_models/providers/auth_provider.dart';
// import 'package:ai_resume_builder/views/landing-signup-signin_view/data/user_details.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/form_button1.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/text_input_widget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool isLoading = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // void _signIn() async {
  //   setState(() {
  //     isLoading = true; // Set loading to true when signing up
  //   });
  //
  //   final email = emailController.text;
  //   final password = passwordController.text;
  //
  //   final authRepository = Authentication();
  //
  //   try {
  //     final data = await authRepository.signIn(email, password);
  //
  //     if (data != null) {
  //       setState(() {
  //         isLoading = false; // Set loading to false when sign-up is complete
  //       });
  //
  //       showSnackbar(context, Colors.black, 'SignIn successful');
  //       print('sign in result: >>> $data');
  //       Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(
  //           builder: ((context) {
  //             return const BottomNavBar();
  //           }),
  //         ),
  //         (route) => false,
  //       );
  //     } else {
  //       setState(() {
  //         isLoading = false; // Set loading to false when the sign in fails
  //       });
  //
  //       print('errror:   eeeeeee');
  //       showSnackbar(context, Colors.red, 'SignIn ERROR');
  //     }
  //   } catch (e) {
  //     setState(() {
  //       isLoading = false; // Set loading to false when the sign in fails
  //     });
  //
  //     showSnackbar(context, Colors.red, 'SignIn ERROR');
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    void _signIn(BuildContext context) async {
      final email = emailController.text;
      final password = passwordController.text;
      authProvider.signIn(email, password, context);
    }

    return Scaffold(
      body: authProvider.isLoading
          ? SpinKitDoubleBounce(
              color: AppColor.bottomNavigationBar,
            )
          : Padding(
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
                      TextInputWidget1(
                        hintText: "E-mail Address",
                        keyboardType: TextInputType.text,
                        controller: emailController,
                      ),
                      SizedBoxes.sizedBox10,
                      SizedBox(
                        height: 55,
                        child: TextField(
                          onTapOutside: (event) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          controller: passwordController,
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
                      FormButton1(
                        text: "Sign In",
                        // onPressed: () {
                        //   Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(
                        //       builder: (context) => const BottomNavBar(),
                        //     ),
                        //   );
                        // },
                        onPressed: () {
                          _signIn(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
