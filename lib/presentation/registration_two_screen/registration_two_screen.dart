import 'models/registration_two_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/registration_two_provider.dart';

class RegistrationTwoScreen extends StatefulWidget {
  const RegistrationTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationTwoScreenState createState() => RegistrationTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationTwoProvider(),
      child: RegistrationTwoScreen(),
    );
  }
}

class RegistrationTwoScreenState extends State<RegistrationTwoScreen> {
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
            imagePath: ImageConstant.imgRegistration2,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
