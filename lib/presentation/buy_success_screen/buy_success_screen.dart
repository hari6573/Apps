import 'models/buy_success_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/buy_success_provider.dart';

class BuySuccessScreen extends StatefulWidget {
  const BuySuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BuySuccessScreenState createState() => BuySuccessScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BuySuccessProvider(),
      child: BuySuccessScreen(),
    );
  }
}

class BuySuccessScreenState extends State<BuySuccessScreen> {
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
            imagePath: ImageConstant.imgBuySuccess,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
