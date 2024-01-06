import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_screen/models/registration_model.dart';

/// A provider class for the RegistrationScreen.
///
/// This provider manages the state of the RegistrationScreen, including the
/// current registrationModelObj
class RegistrationProvider extends ChangeNotifier {
  RegistrationModel registrationModelObj = RegistrationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
