import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/views/my_resume_view/widgets/resume_screen_header.dart';
import 'package:in_app_payment/in_app_payment.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = false;

  String packagePrice = "0";

  final pay = HNGPay();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppHeader(
        text: "Upgrade to Pro",
        color: AppColor.upgradeToProLightMode,
        textColor: AppColor.bottomNavigationBar,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          top: 20,
          right: 18,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Benefits of ResumePro pro subscription:",
                  style: TextStyle(
                    color: AppColor.bottomNavigationBar,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Inter",
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "* Unlimited Resume Generation",
                  style: TextStyle(
                    color: AppColor.bottomNavigationBar,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                PaymentPackagesCard(
                  duration: "2 Months",
                  price: "₦2,000",
                  bgColor: isClicked1
                      ? AppColor.bottomNavigationBar
                      : const Color(0xFFCCCCCC),
                  textColor:
                      isClicked1 ? Colors.white : AppColor.bottomNavigationBar,
                  onPressed: () {
                    setState(() {
                      isClicked1 = !isClicked1;
                    });

                    if (isClicked1 == true) {
                      setState(() {
                        isClicked2 = false;
                        isClicked3 = false;
                        packagePrice = "2000";
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                PaymentPackagesCard(
                  duration: "6 Months",
                  price: "₦5,000",
                  bgColor: isClicked2
                      ? AppColor.bottomNavigationBar
                      : const Color(0xFFCCCCCC),
                  textColor:
                      isClicked2 ? Colors.white : AppColor.bottomNavigationBar,
                  onPressed: () {
                    setState(() {
                      isClicked2 = !isClicked2;
                    });

                    if (isClicked2 == true) {
                      setState(() {
                        isClicked1 = false;
                        isClicked3 = false;
                        packagePrice = "5000";
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                PaymentPackagesCard(
                  duration: "12 Months",
                  price: "₦8,000",
                  bgColor: isClicked3
                      ? AppColor.bottomNavigationBar
                      : const Color(0xFFCCCCCC),
                  textColor:
                      isClicked3 ? Colors.white : AppColor.bottomNavigationBar,
                  onPressed: () {
                    setState(() {
                      isClicked3 = !isClicked3;
                    });

                    if (isClicked3 == true) {
                      setState(() {
                        isClicked1 = false;
                        isClicked2 = false;
                        packagePrice = "8000";
                      });
                    }
                  },
                ),
              ],
            ),
            Column(
              children: [
                pay.googlePay(amountToPay: packagePrice),
                const SizedBox(
                  height: 60,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PaymentPackagesCard extends StatelessWidget {
  const PaymentPackagesCard({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.onPressed,
    required this.duration,
    required this.price,
  });

  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed;
  final String duration;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              duration,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w800,
                fontFamily: "Inter",
                fontSize: 18,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter",
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
