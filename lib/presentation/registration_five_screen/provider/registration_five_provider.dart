import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_five_screen/models/registration_five_model.dart';

/// A provider class for the RegistrationFiveScreen.
///
/// This provider manages the state of the RegistrationFiveScreen, including the
/// current registrationFiveModelObj
class RegistrationFiveProvider extends ChangeNotifier {
  RegistrationFiveModel registrationFiveModelObj = RegistrationFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
