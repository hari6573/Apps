import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/portfolio_screen/models/portfolio_model.dart';

/// A provider class for the PortfolioScreen.
///
/// This provider manages the state of the PortfolioScreen, including the
/// current portfolioModelObj

// ignore_for_file: must_be_immutable
class PortfolioProvider extends ChangeNotifier {
  PortfolioModel portfolioModelObj = PortfolioModel();

  @override
  void dispose() {
    super.dispose();
  }
}
