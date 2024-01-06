import 'models/cancel_order_success_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/cancel_order_success_provider.dart';

class CancelOrderSuccessScreen extends StatefulWidget {
  const CancelOrderSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CancelOrderSuccessScreenState createState() =>
      CancelOrderSuccessScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CancelOrderSuccessProvider(),
      child: CancelOrderSuccessScreen(),
    );
  }
}

class CancelOrderSuccessScreenState extends State<CancelOrderSuccessScreen> {
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
            imagePath: ImageConstant.imgOrderCancelSuccess,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
