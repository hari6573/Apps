import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/buy_confirmation_screen/models/buy_confirmation_model.dart';

/// A provider class for the BuyConfirmationScreen.
///
/// This provider manages the state of the BuyConfirmationScreen, including the
/// current buyConfirmationModelObj
class BuyConfirmationProvider extends ChangeNotifier {
  BuyConfirmationModel buyConfirmationModelObj = BuyConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
