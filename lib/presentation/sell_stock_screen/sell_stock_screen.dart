import 'models/sell_stock_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/sell_stock_provider.dart';

class SellStockScreen extends StatefulWidget {
  const SellStockScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellStockScreenState createState() => SellStockScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellStockProvider(),
      child: SellStockScreen(),
    );
  }
}

class SellStockScreenState extends State<SellStockScreen> {
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
            imagePath: ImageConstant.imgSellStock,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
