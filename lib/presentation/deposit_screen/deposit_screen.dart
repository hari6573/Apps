import 'models/deposit_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/deposit_provider.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DepositScreenState createState() => DepositScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DepositProvider(),
      child: DepositScreen(),
    );
  }
}

class DepositScreenState extends State<DepositScreen> {
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
            imagePath: ImageConstant.imgDeposit,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
