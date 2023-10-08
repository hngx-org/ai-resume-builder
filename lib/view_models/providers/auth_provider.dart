import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/models/user_model.dart';
import 'package:ai_resume_builder/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';
import 'package:hng_authentication/widgets/widget.dart';

class AuthProvider extends ChangeNotifier {
  String cookie = '';
  String accessToken = '';
  int? credit;

  late UserModel _user;

  UserModel get user => _user;

  bool isLoading = false;
  Authentication authRepository = Authentication();

  // AuthProvider() {
  //   _initUserFromLocalStorage();
  // }
  //
  // Future<void> _initUserFromLocalStorage() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final userData = prefs.getString('userData');
  //
  //   if (userData != null) {
  //     _user = UserModel.fromJson(jsonDecode(userData));
  //   }
  //
  //   notifyListeners();
  // }

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
        _user = UserModel(
          name: data.name,
          email: data.email,
          password: password,
          cookie: data.cookie!,
        );
        cookie = data.cookie!;
        // credit = data.credits;
        showSnackbar(context, Colors.black, 'SignUp successful');
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) {
            return const BottomNavBar();
          }),
          (route) => false,
        );
      } else {
        showSnackbar(context, Colors.red, 'SignUp ERROR');
      }
    } catch (e) {
      showSnackbar(context, Colors.red, 'SignUp ERROR');
      print(e.toString());
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
        _user = UserModel(
          name: data.name,
          email: data.email,
          password: password,
          cookie: data.cookie,
        );

        cookie = data.cookie;
        print('Sign in cookie $cookie');
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
