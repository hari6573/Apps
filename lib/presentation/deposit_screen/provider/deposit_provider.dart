import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/deposit_screen/models/deposit_model.dart';

/// A provider class for the DepositScreen.
///
/// This provider manages the state of the DepositScreen, including the
/// current depositModelObj
class DepositProvider extends ChangeNotifier {
  DepositModel depositModelObj = DepositModel();

  @override
  void dispose() {
    super.dispose();
  }
}
