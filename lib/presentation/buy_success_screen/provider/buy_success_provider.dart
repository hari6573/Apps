import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/buy_success_screen/models/buy_success_model.dart';

/// A provider class for the BuySuccessScreen.
///
/// This provider manages the state of the BuySuccessScreen, including the
/// current buySuccessModelObj
class BuySuccessProvider extends ChangeNotifier {
  BuySuccessModel buySuccessModelObj = BuySuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
