import 'models/forgot_password_one_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/forgot_password_one_provider.dart';

class ForgotPasswordOneScreen extends StatefulWidget {
  const ForgotPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordOneScreenState createState() => ForgotPasswordOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordOneProvider(),
      child: ForgotPasswordOneScreen(),
    );
  }
}

class ForgotPasswordOneScreenState extends State<ForgotPasswordOneScreen> {
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
            imagePath: ImageConstant.imgForgotPassword,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
