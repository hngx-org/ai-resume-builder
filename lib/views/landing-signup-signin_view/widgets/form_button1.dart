import 'package:ai_resume_builder/constant/colors.dart';
import 'package:flutter/material.dart';

class FormButton1 extends StatelessWidget {
  const FormButton1({
    super.key, required this.text, required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
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
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: "Inter",
            fontWeight: FontWeight.w800,
            letterSpacing: 0.15,
          ),
        ),
      ),
    );
  }
}
