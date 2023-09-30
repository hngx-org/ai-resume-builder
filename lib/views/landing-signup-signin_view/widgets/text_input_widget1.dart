import 'package:ai_resume_builder/constant/colors.dart';
import 'package:flutter/material.dart';

class TextInputWidget1 extends StatelessWidget {
  const TextInputWidget1({
    super.key,
    required this.hintText,
    required this.keyboardType,
  });

  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: keyboardType,
        cursorColor: AppColor.bottomNavigationBar,
        style: TextStyle(
          color: AppColor.bottomNavigationBar,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          hintText: hintText,
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
        ),
      ),
    );
  }
}
