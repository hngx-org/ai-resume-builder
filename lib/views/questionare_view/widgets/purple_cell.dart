import 'package:ai_resume_builder/constant/colors.dart';
import 'package:flutter/material.dart';


class PurpleCell extends StatelessWidget {
  final Widget child; // Add a child property

  const PurpleCell({
    Key? key,
    required this.child, // Require the child parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: AppColor.upgradeToProDarkMode),
      child: child, // Use the child parameter
    );
  }
}