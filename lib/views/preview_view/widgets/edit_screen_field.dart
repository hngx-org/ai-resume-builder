import 'package:ai_resume_builder/views/preview_view/widgets/text_input_widget2.dart';
import 'package:flutter/material.dart';

class EditScreenField extends StatelessWidget {
  const EditScreenField({
    super.key,
    required this.title,
    required this.keyboardType,
    this.controller,
    this.onChanged,
  });

  final String title;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextInputWidget2(
          keyboardType: keyboardType,
          controller: controller,
          onChanged: onChanged,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
