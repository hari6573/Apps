import 'models/buy_confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/buy_confirmation_provider.dart';

class BuyConfirmationScreen extends StatefulWidget {
  const BuyConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BuyConfirmationScreenState createState() => BuyConfirmationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BuyConfirmationProvider(),
      child: BuyConfirmationScreen(),
    );
  }
}

class BuyConfirmationScreenState extends State<BuyConfirmationScreen> {
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
            imagePath: ImageConstant.imgOrderConfirmation,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
