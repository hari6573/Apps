import 'models/forgot_password_four_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/forgot_password_four_provider.dart';

class ForgotPasswordFourScreen extends StatefulWidget {
  const ForgotPasswordFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordFourScreenState createState() =>
      ForgotPasswordFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordFourProvider(),
      child: ForgotPasswordFourScreen(),
    );
  }
}

class ForgotPasswordFourScreenState extends State<ForgotPasswordFourScreen> {
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
            imagePath: ImageConstant.imgForgotPassword1,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
