import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/landing-signup-signin_view/screens/cookie_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await pdfHandler.loadSavedPdfList();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CookieProvider(),
        ),
         ChangeNotifierProvider(
      create: (context) => SharedData(),)
      ],
      child: const MyApp(),
    ),
  );
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