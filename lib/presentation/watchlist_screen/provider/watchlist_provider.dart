import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/watchlist_screen/models/watchlist_model.dart';

/// A provider class for the WatchlistScreen.
///
/// This provider manages the state of the WatchlistScreen, including the
/// current watchlistModelObj
class WatchlistProvider extends ChangeNotifier {
  WatchlistModel watchlistModelObj = WatchlistModel();

  @override
  void dispose() {
    super.dispose();
  }
}
