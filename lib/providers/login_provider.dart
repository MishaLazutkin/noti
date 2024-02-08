import 'package:flutter/material.dart';
import 'dart:async';

import 'package:noti/utils/style.dart';

class LoginProvider extends ChangeNotifier {
  var _tensHours;
  var _unitsHours;
  var _tensMinutes;
  var _unitsMinutes;

  Future<void> init() async {}

  bool get isTimeEntered {
    return (tensHours.isNotEmpty) &&
        (unitsHours.isNotEmpty) &&
        (tensMinutes.isNotEmpty) &&
        (unitsMinutes.isNotEmpty);
  }

  Color loginButtonColor() {
    if (isTimeEntered) {
      return AppColor.bottomButtonActiveColor;
    } else {
      return AppColor.bottomButtonInactiveColor;
    }
  }

  Future<void> login() async {
    notifyListeners();
  }

  bool validate() {
    return false;
  }

  String get unitsMinutes => _unitsMinutes ?? '';

  set unitsMinutes(String value) {
    _unitsMinutes = value;
    notifyListeners();
  }

  String get tensMinutes => _tensMinutes ?? '';

  set tensMinutes(String value) {
    _tensMinutes = value;
    notifyListeners();
  }

  String get unitsHours => _unitsHours ?? '';

  set unitsHours(String value) {
    _unitsHours = value;
    notifyListeners();
  }

  String get tensHours => _tensHours ?? '';

  set tensHours(String value) {
    _tensHours = value;
    notifyListeners();
  }
}
