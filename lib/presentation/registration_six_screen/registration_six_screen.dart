import 'models/registration_six_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/registration_six_provider.dart';

class RegistrationSixScreen extends StatefulWidget {
  const RegistrationSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationSixScreenState createState() => RegistrationSixScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationSixProvider(),
      child: RegistrationSixScreen(),
    );
  }
}

class RegistrationSixScreenState extends State<RegistrationSixScreen> {
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
            imagePath: ImageConstant.imgRegistration6,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
