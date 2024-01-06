import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/stock_detail_screen/models/stock_detail_model.dart';
import '../models/two_item_model.dart';
import '../models/detailsahamtabs_item_model.dart';

/// A provider class for the StockDetailScreen.
///
/// This provider manages the state of the StockDetailScreen, including the
/// current stockDetailModelObj

// ignore_for_file: must_be_immutable
class StockDetailProvider extends ChangeNotifier {
  StockDetailModel stockDetailModelObj = StockDetailModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    stockDetailModelObj.twoItemList.forEach((element) {
      element.isSelected = false;
    });
    stockDetailModelObj.twoItemList[index].isSelected = value;
    notifyListeners();
  }
}
