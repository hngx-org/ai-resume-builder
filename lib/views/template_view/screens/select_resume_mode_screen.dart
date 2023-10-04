import 'package:flutter/material.dart';

class SelectResumeModeScreen extends StatelessWidget {
  const SelectResumeModeScreen(
      {super.key});

  // final TemplateTheme? templateTheme;
  // final TemplateData data;

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
      // body: SingleChildScrollView(
      //   child: SelectResumeTile(data: data, templateTheme: templateTheme!,),
      // ),
      body: const Center(
        child: Text("Select Resume Mode"),
      ),
    );
  }
}
