import 'models/login_filled_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/login_filled_provider.dart';

class LoginFilledScreen extends StatefulWidget {
  const LoginFilledScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginFilledScreenState createState() => LoginFilledScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginFilledProvider(),
      child: LoginFilledScreen(),
    );
  }
}

class LoginFilledScreenState extends State<LoginFilledScreen> {
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
            imagePath: ImageConstant.imgLoginFilled1,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
