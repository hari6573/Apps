import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/registration_seven_screen/models/registration_seven_model.dart';

/// A provider class for the RegistrationSevenScreen.
///
/// This provider manages the state of the RegistrationSevenScreen, including the
/// current registrationSevenModelObj
class RegistrationSevenProvider extends ChangeNotifier {
  RegistrationSevenModel registrationSevenModelObj = RegistrationSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
