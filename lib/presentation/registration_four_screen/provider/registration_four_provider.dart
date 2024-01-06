import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_four_screen/models/registration_four_model.dart';

/// A provider class for the RegistrationFourScreen.
///
/// This provider manages the state of the RegistrationFourScreen, including the
/// current registrationFourModelObj
class RegistrationFourProvider extends ChangeNotifier {
  RegistrationFourModel registrationFourModelObj = RegistrationFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
