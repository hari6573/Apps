import 'models/registration_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/registration_seven_provider.dart';

class RegistrationSevenScreen extends StatefulWidget {
  const RegistrationSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationSevenScreenState createState() => RegistrationSevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationSevenProvider(),
      child: RegistrationSevenScreen(),
    );
  }
}

class RegistrationSevenScreenState extends State<RegistrationSevenScreen> {
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
            imagePath: ImageConstant.imgRegistration7,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
