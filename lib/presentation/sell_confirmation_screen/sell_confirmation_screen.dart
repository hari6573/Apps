import 'models/sell_confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/sell_confirmation_provider.dart';

class SellConfirmationScreen extends StatefulWidget {
  const SellConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellConfirmationScreenState createState() => SellConfirmationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellConfirmationProvider(),
      child: SellConfirmationScreen(),
    );
  }
}

class SellConfirmationScreenState extends State<SellConfirmationScreen> {
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
            imagePath: ImageConstant.imgSellConfirmation,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
