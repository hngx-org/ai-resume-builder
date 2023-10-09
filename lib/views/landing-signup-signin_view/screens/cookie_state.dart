import 'package:flutter/foundation.dart';

class CookieProvider with ChangeNotifier {
  String? _cookie;

  String get cookie => _cookie!;

  void setCookie(String cookie) {
    _cookie = cookie;
    notifyListeners();
  }
}

class SharedData extends ChangeNotifier {
  String _selectedEduction = "";
  String _selectedRole = "";
  String _selectedSkill = "";
  String _selectedWork = "";

  String get selectedEduction => _selectedEduction;
  String get selectedRole => _selectedRole;
  String get selectedSkill => _selectedSkill;
  String get selectedWork => _selectedWork;

  void updateDataFromdataFromeducationallevel(String newData) {
    _selectedEduction = newData;
    notifyListeners();
  }

  void updateDataFromdatafromdesiredrole(String newData) {
    _selectedRole = newData;
    notifyListeners();
  }

  void updateDataFromdatafromselectskill(String newData) {
    _selectedSkill = newData;
    notifyListeners();
  }

  void updateDataFromworkexperience(String newData) {
    _selectedWork = newData;
    notifyListeners();
  }
}
