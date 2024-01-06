import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/sell_success_screen/models/sell_success_model.dart';

/// A provider class for the SellSuccessScreen.
///
/// This provider manages the state of the SellSuccessScreen, including the
/// current sellSuccessModelObj
class SellSuccessProvider extends ChangeNotifier {
  SellSuccessModel sellSuccessModelObj = SellSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
