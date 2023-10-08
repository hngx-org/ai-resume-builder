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
  String? dataFromeducationallevel;
  String? datafromdesiredrole;
  String? datafromselectskill;
  String? datafromworkexperience;

  // Methods to update the data
  void updateDataFromdataFromeducationallevel(String newData) {
    dataFromeducationallevel = newData;
    notifyListeners();
  }

  void updateDataFromdatafromdesiredrole(String newData) {
    datafromdesiredrole = newData;
    notifyListeners();
  }

  void updateDataFromdatafromselectskill(String newData) {
    datafromselectskill = newData;
    notifyListeners();
  }

  void updateDataFromworkexperience(String newData) {
    datafromworkexperience = newData;
    notifyListeners();
  }
}

