import 'package:ai_resume_builder/views/template_view/data/open_file_mobile.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';

final pdfHandler = PdfHandler();
final authRepository = Authentication();

Future<void> showReusableDialog(BuildContext context, String text) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(text),
          ],
        ),
      );
    },
  );
}
