// ignore_for_file: use_build_context_synchronously, avoid_print

// import 'dart:convert';

import 'package:ai_resume_builder/constant/brain.dart';
import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/constant/sizedboxes.dart';
import 'package:ai_resume_builder/view_models/providers/auth_provider.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/form_button1.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/widgets/text_input_widget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isLoading = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(
      context,
    );
    void _signUp(BuildContext context) {
      final name = nameController.text;
      final email = emailController.text;
      final password = passwordController.text;

      authProvider.signUp(name, email, password, context);
    }
    // ignore: no_leading_underscores_for_local_identifiers
    // void _signUp() async {
    // setState(() {
    //   isLoading = true; // Set loading to true when signing up
    // });
    //
    // final name = nameController.text;
    // final email = emailController.text;
    // final password = passwordController.text;
    //
    // final authRepository = Authentication();
    //
    // try {
    //   print("not");
    //   final data = await authRepository.signUp(email, name, password);
    //   print("passed");
    //
    //   if (data != null) {
    //     // Registration failed, display an error message
    //     setState(() {
    //       isLoading = false; // Set loading to false when the sign up fails
    //     });
    //
    //     showSnackbar(context, Colors.black, 'SignUp successful');
    //     print('sign up Email >>> ${data.email}');
    //     print('sign up id >>> ${data.id}');
    //     print('sign up created at >>> ${data.createdAt}');
    //
    //     Navigator.pushAndRemoveUntil(
    //       context,
    //       MaterialPageRoute(builder: (context) {
    //         return const BottomNavBar();
    //       }),
    //       (route) => false,
    //     );
    //   } else {
    //     setState(() {
    //       isLoading = false; // Set loading to false when sign-up is complete
    //     });
    //
    //     print('errror:   eeeeeee');
    //     showSnackbar(context, Colors.red, 'SignUp ERROR');
    //   }
    // } catch (e) {
    //   setState(() {
    //     isLoading = false; // Set loading to false when the sign in fails
    //   });
    //
    //   showSnackbar(context, Colors.red, 'SignUp ERROR');
    //   print(e.toString());
    // }

    // // Simulate a delay (you would replace this with your actual sign-up logic)
    // Future.delayed(Duration(seconds: 2), () {
    //   setState(() {
    //     _isLoading = false; // Set loading to false when sign-up is complete
    //   });
    // });

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
                        "Sign Up",
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
                        hintText: "Name",
                        keyboardType: TextInputType.text,
                        controller: nameController,
                      ),
                      SizedBoxes.sizedBox10,
                      TextInputWidget1(
                        hintText: "E-mail Address",
                        keyboardType: TextInputType.emailAddress,
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
                        text: "Sign Up",
                        onPressed: () {
                          _signUp(context);
                        },
                        // onPressed: () async {
                        //   final name = (nameController).text;
                        //   final email = (emailController).text;
                        //   final password = (passwordController).text;

                        //   final authRepository = Authentication();

                        //   final result =
                        //       await authRepository.signUp(email, name, password);

                        //   try {
                        //     if (result != null) {
                        //       // Registration failed, display an error message

                        //       print("result is: $result");
                        //       final data = json.decode(result.body);
                        //       print(data);
                        //       showSnackbar(
                        //           context, Colors.black, 'SignUp successful');
                        //       print('sign up result: >>> $data');
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
                        //       print('errror:   eeeeeee');
                        //       showSnackbar(context, Colors.red, 'SignUp ERROR');
                        //     }
                        //   } catch (e) {
                        //     print(e);
                        //   }
                        // },
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
