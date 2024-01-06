import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/order_detail_screen/models/order_detail_model.dart';

/// A provider class for the OrderDetailScreen.
///
/// This provider manages the state of the OrderDetailScreen, including the
/// current orderDetailModelObj
class OrderDetailProvider extends ChangeNotifier {
  OrderDetailModel orderDetailModelObj = OrderDetailModel();

  @override
  void dispose() {
    super.dispose();
  }
}
