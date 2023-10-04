import 'package:ai_resume_builder/views/template_view/widget/select_resume_tile.dart';
import 'package:flutter/material.dart';

class SelectResumeModeScreen extends StatelessWidget {
  const SelectResumeModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Resume Pro',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Inter'),
        ),
      ),
      body: const SingleChildScrollView(
        child: SelectResumeTile(),
      ),
    );
  }
}
