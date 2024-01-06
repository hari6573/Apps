import 'models/registration_four_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/registration_four_provider.dart';

class RegistrationFourScreen extends StatefulWidget {
  const RegistrationFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationFourScreenState createState() => RegistrationFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationFourProvider(),
      child: RegistrationFourScreen(),
    );
  }
}

class RegistrationFourScreenState extends State<RegistrationFourScreen> {
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
            imagePath: ImageConstant.imgRegistration4,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
