import 'models/forgot_password_two_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/forgot_password_two_provider.dart';

class ForgotPasswordTwoScreen extends StatefulWidget {
  const ForgotPasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordTwoScreenState createState() => ForgotPasswordTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordTwoProvider(),
      child: ForgotPasswordTwoScreen(),
    );
  }
}

class ForgotPasswordTwoScreenState extends State<ForgotPasswordTwoScreen> {
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
            imagePath: ImageConstant.imgForgotPassword844x390,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
