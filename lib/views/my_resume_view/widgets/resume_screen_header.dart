import 'package:flutter/material.dart';

class CustomAppHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppHeader(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor});

  final String text;
  final Color color;
  final Color textColor;

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 60),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: "Inter",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class PaymentScreenHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const PaymentScreenHeader(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor});

  final String text;
  final Color color;
  final Color textColor;

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: textColor,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontFamily: "Inter",
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
