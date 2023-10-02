import 'package:flutter/material.dart';

class CustomAppHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppHeader({super.key, required this.text});

  final String text;

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 60),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Inter",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
