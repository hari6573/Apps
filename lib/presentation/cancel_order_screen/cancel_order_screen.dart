import 'models/cancel_order_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/cancel_order_provider.dart';

class CancelOrderScreen extends StatefulWidget {
  const CancelOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CancelOrderScreenState createState() => CancelOrderScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CancelOrderProvider(),
      child: CancelOrderScreen(),
    );
  }
}

class CancelOrderScreenState extends State<CancelOrderScreen> {
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
            imagePath: ImageConstant.imgCancelOrder,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
