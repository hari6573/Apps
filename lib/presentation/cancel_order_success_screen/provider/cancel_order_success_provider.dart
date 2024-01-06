import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/cancel_order_success_screen/models/cancel_order_success_model.dart';

/// A provider class for the CancelOrderSuccessScreen.
///
/// This provider manages the state of the CancelOrderSuccessScreen, including the
/// current cancelOrderSuccessModelObj
class CancelOrderSuccessProvider extends ChangeNotifier {
  CancelOrderSuccessModel cancelOrderSuccessModelObj =
      CancelOrderSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
