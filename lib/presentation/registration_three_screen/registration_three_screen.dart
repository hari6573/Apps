import 'models/registration_three_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/registration_three_provider.dart';

class RegistrationThreeScreen extends StatefulWidget {
  const RegistrationThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationThreeScreenState createState() => RegistrationThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationThreeProvider(),
      child: RegistrationThreeScreen(),
    );
  }
}

class RegistrationThreeScreenState extends State<RegistrationThreeScreen> {
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
            imagePath: ImageConstant.imgRegistration3,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
