import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/login_screen/models/login_model.dart';

/// A provider class for the LoginScreen.
///
/// This provider manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginProvider extends ChangeNotifier {
  LoginModel loginModelObj = LoginModel();

  @override
  void dispose() {
    super.dispose();
  }
}
