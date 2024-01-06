import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_six_screen/models/registration_six_model.dart';

/// A provider class for the RegistrationSixScreen.
///
/// This provider manages the state of the RegistrationSixScreen, including the
/// current registrationSixModelObj
class RegistrationSixProvider extends ChangeNotifier {
  RegistrationSixModel registrationSixModelObj = RegistrationSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
