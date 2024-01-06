import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/buy_stock_screen/models/buy_stock_model.dart';

/// A provider class for the BuyStockScreen.
///
/// This provider manages the state of the BuyStockScreen, including the
/// current buyStockModelObj
class BuyStockProvider extends ChangeNotifier {
  BuyStockModel buyStockModelObj = BuyStockModel();

  @override
  void dispose() {
    super.dispose();
  }
}
