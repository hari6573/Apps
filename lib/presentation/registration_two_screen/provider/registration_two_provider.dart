import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_two_screen/models/registration_two_model.dart';

/// A provider class for the RegistrationTwoScreen.
///
/// This provider manages the state of the RegistrationTwoScreen, including the
/// current registrationTwoModelObj
class RegistrationTwoProvider extends ChangeNotifier {
  RegistrationTwoModel registrationTwoModelObj = RegistrationTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
