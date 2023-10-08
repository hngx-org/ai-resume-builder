import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/models/user_data.dart';
import 'package:ai_resume_builder/navigation_bar.dart';
import 'package:ai_resume_builder/views/landing-signup-signin_view/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';
import 'package:hng_authentication/widgets/widget.dart';

class AuthProvider extends ChangeNotifier {
  String cookie = '';
  String accessToken = '';

  bool isLoading = false;
  Authentication authRepository = Authentication();

  Future<void> signUp(
    String name,
    String email,
    String password,
    BuildContext context,
  ) async {
    isLoading = true;
    notifyListeners();

    try {
      final data = await authRepository.signUp(email, name, password);
      if (data != null) {
        UserData.userData = {
          'name': data.name,
          'email': data.email,
          'password': password,
          'credits': data.credits,
        };

        showSnackbar(context, Colors.black, 'Signup successful');

        // Rest of your code...
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) {
            return const SignInView();
          }),
          (route) => false,
        );
      } else {
        showSnackbar(
            context, Colors.red, 'SignUp ERROR : Cookie or password is null');
      }
    } catch (e) {
      if (e is ApiException) {
        showSnackbar(context, Colors.red, 'SignUp ERROR: ${e.message}');
      } else {
        showSnackbar(context, Colors.red, 'SignUp ERROR');
        print(e.toString());
      }
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signIn(
    String email,
    String password,
    BuildContext context,
  ) async {
    isLoading = true;
    notifyListeners();

    try {
      final data = await authRepository.signIn(email, password);
      if (data != null) {
        final results = UserData.userData = {
          'name': data.name,
          'email': data.email,
          'cookie': data.cookie,
          'credits': data.credits,
        };
        print('Sign in resutls : ${results.toString()}');
        showReusableDialog(context, 'Sign-In in process');
        await Future.delayed(const Duration(seconds: 3));
        showSnackbar(context, Colors.black, 'SignIn successful');
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) {
            return const BottomNavBar();
          }),
          (route) => false,
        );
      } else {
        showSnackbar(context, Colors.red, 'SignIn ERROR');
      }
    } catch (e) {
      print('Signing in Error : $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
