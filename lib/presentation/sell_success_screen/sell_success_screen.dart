import 'models/sell_success_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/sell_success_provider.dart';

class SellSuccessScreen extends StatefulWidget {
  const SellSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellSuccessScreenState createState() => SellSuccessScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellSuccessProvider(),
      child: SellSuccessScreen(),
    );
  }
}

class SellSuccessScreenState extends State<SellSuccessScreen> {
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
            imagePath: ImageConstant.imgSellCussess,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
