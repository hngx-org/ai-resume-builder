import 'package:ai_resume_builder/constant/colors.dart';
import 'package:flutter/material.dart';

class TextInputWidget2 extends StatelessWidget {
  const TextInputWidget2({
    super.key,
     this.hintText,
    required this.keyboardType, this.controller, this.onChanged,
  });

  final String? hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onChanged: onChanged!,
        controller: controller,
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
