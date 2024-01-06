import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/sell_stock_screen/models/sell_stock_model.dart';

/// A provider class for the SellStockScreen.
///
/// This provider manages the state of the SellStockScreen, including the
/// current sellStockModelObj
class SellStockProvider extends ChangeNotifier {
  SellStockModel sellStockModelObj = SellStockModel();

  @override
  void dispose() {
    super.dispose();
  }
}
