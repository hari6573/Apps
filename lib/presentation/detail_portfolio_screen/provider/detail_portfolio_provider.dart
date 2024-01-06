import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/detail_portfolio_screen/models/detail_portfolio_model.dart';

/// A provider class for the DetailPortfolioScreen.
///
/// This provider manages the state of the DetailPortfolioScreen, including the
/// current detailPortfolioModelObj
class DetailPortfolioProvider extends ChangeNotifier {
  DetailPortfolioModel detailPortfolioModelObj = DetailPortfolioModel();

  @override
  void dispose() {
    super.dispose();
  }
}
