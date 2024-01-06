import 'models/watchlist_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/watchlist_provider.dart';

class WatchlistScreen extends StatefulWidget {
  const WatchlistScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WatchlistScreenState createState() => WatchlistScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WatchlistProvider(),
      child: WatchlistScreen(),
    );
  }
}

class WatchlistScreenState extends State<WatchlistScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgWatchlist1,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
