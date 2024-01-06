import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/sell_confirmation_screen/models/sell_confirmation_model.dart';

/// A provider class for the SellConfirmationScreen.
///
/// This provider manages the state of the SellConfirmationScreen, including the
/// current sellConfirmationModelObj
class SellConfirmationProvider extends ChangeNotifier {
  SellConfirmationModel sellConfirmationModelObj = SellConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
