import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/home_tab_container_page/models/home_tab_container_model.dart';

/// A provider class for the HomeTabContainerPage.
///
/// This provider manages the state of the HomeTabContainerPage, including the
/// current homeTabContainerModelObj
class HomeTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeTabContainerModel homeTabContainerModelObj = HomeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
