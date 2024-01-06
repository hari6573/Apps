import 'models/buy_stock_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/buy_stock_provider.dart';

class BuyStockScreen extends StatefulWidget {
  const BuyStockScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BuyStockScreenState createState() => BuyStockScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BuyStockProvider(),
      child: BuyStockScreen(),
    );
  }
}

class BuyStockScreenState extends State<BuyStockScreen> {
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
            imagePath: ImageConstant.imgBuyStock,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
