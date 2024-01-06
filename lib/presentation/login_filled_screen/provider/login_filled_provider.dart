import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/login_filled_screen/models/login_filled_model.dart';

/// A provider class for the LoginFilledScreen.
///
/// This provider manages the state of the LoginFilledScreen, including the
/// current loginFilledModelObj
class LoginFilledProvider extends ChangeNotifier {
  LoginFilledModel loginFilledModelObj = LoginFilledModel();

  @override
  void dispose() {
    super.dispose();
  }
}
