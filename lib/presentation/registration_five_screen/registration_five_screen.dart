import 'models/registration_five_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/registration_five_provider.dart';

class RegistrationFiveScreen extends StatefulWidget {
  const RegistrationFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationFiveScreenState createState() => RegistrationFiveScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationFiveProvider(),
      child: RegistrationFiveScreen(),
    );
  }
}

class RegistrationFiveScreenState extends State<RegistrationFiveScreen> {
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
            imagePath: ImageConstant.imgRegistration5,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
