import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_three_screen/models/registration_three_model.dart';

/// A provider class for the RegistrationThreeScreen.
///
/// This provider manages the state of the RegistrationThreeScreen, including the
/// current registrationThreeModelObj
class RegistrationThreeProvider extends ChangeNotifier {
  RegistrationThreeModel registrationThreeModelObj = RegistrationThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
