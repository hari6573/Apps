import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/forgot_password_two_screen/models/forgot_password_two_model.dart';

/// A provider class for the ForgotPasswordTwoScreen.
///
/// This provider manages the state of the ForgotPasswordTwoScreen, including the
/// current forgotPasswordTwoModelObj
class ForgotPasswordTwoProvider extends ChangeNotifier {
  ForgotPasswordTwoModel forgotPasswordTwoModelObj = ForgotPasswordTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
