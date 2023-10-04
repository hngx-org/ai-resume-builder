import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/landing_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
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


// class UserDetailsProvider extends ChangeNotifier {
//   UserDetails? _userDetails;

//   UserDetails? get userDetails => _userDetails;

//   void setUserDetails(UserDetails details) {
//     _userDetails = details;
//     notifyListeners();
//   }
// }