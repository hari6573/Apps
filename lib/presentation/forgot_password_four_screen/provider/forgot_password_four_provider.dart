import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/forgot_password_four_screen/models/forgot_password_four_model.dart';

/// A provider class for the ForgotPasswordFourScreen.
///
/// This provider manages the state of the ForgotPasswordFourScreen, including the
/// current forgotPasswordFourModelObj
class ForgotPasswordFourProvider extends ChangeNotifier {
  ForgotPasswordFourModel forgotPasswordFourModelObj =
      ForgotPasswordFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
