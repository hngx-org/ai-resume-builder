import 'package:ai_resume_builder/constant/random.dart';
import 'package:ai_resume_builder/models/user_model.dart';
import 'package:ai_resume_builder/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';
import 'package:hng_authentication/widgets/widget.dart';

class AuthProvider extends ChangeNotifier {
  String cookie = '';
  String accessToken = '';

  UserModel? _user;

  UserModel? get user => _user;

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
        _user =
            UserModel(name: data.name, email: data.email, password: password);
        showReusableDialog(context, 'Sign-up in process');
        await Future.delayed(const Duration(seconds: 3));
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
        _user =
            UserModel(name: data.name, email: data.email, password: password);
        cookie = data.cookie;
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
// class AuthProvider extends ChangeNotifier {
//   bool isLoading = false;
//
//   Future<void> signUp(
//     String name,
//     String email,
//     String password,
//     BuildContext context,
//   ) async {
//     isLoading = true;
//     notifyListeners();
//
//     try {
//       final data = await authRepository.signUp(email, name, password);
//
//       if (data != null) {
//         showSnackbar(context, Colors.black, 'SignUp successful');
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) {
//             return const BottomNavBar();
//           }),
//           (route) => false,
//         );
//         // Perform any other actions if needed
//       } else {
//         showSnackbar(context, Colors.red, 'SignUp ERROR');
//       }
//     } catch (e) {
//       showSnackbar(context, Colors.red, 'SignUp ERROR');
//       print(e.toString());
//     } finally {
//       isLoading = false;
//       notifyListeners();
//     }
//   }
//
//   Future<void> signIn(
//       String email, String password, BuildContext context) async {
//     isLoading = true;
//     notifyListeners();
//
//     try {
//       final data = await authRepository.signIn(email, password);
//
//       if (data != null) {
//         showSnackbar(context, Colors.black, 'SignIn successful');
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) {
//             return const BottomNavBar();
//           }),
//           (route) => false,
//         );
//       } else {
//         showSnackbar(context, Colors.red, 'SignIn ERROR');
//       }
//       //   setState(() {
//       //     isLoading = false; // Set loading to false when sign-up is complete
//       //   });
//       // }
//     } catch (e) {
//       print('Signing in Error : $e');
//     } finally {
//       isLoading = false;
//       notifyListeners();
//     }
//   }
// }
