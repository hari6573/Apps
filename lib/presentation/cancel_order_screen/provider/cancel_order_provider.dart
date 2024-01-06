import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/cancel_order_screen/models/cancel_order_model.dart';

/// A provider class for the CancelOrderScreen.
///
/// This provider manages the state of the CancelOrderScreen, including the
/// current cancelOrderModelObj
class CancelOrderProvider extends ChangeNotifier {
  CancelOrderModel cancelOrderModelObj = CancelOrderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
