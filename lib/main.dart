import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Ai builder',
      // home: BottomNavBar(),
      home: LandingPageView(),
    );
  }
}
