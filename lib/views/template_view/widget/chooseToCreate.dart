// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constant/colors.dart';


  Widget chooseToCreate(
      {required String image,
      required String text,
      required Color color,
      String? subText,
      required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        height: 55,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
            const Spacer(),
            if (subText != null) // Conditionally include subText
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subText,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                      color: AppColor.recommendText,
                    ),
                  ),
                ],
              ),
            const SizedBox(
              width: 30,
            ),
            const Icon(
              CupertinoIcons.forward,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
