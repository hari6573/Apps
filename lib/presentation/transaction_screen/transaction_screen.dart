import 'models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/transaction_provider.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionScreenState createState() => TransactionScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionProvider(),
      child: TransactionScreen(),
    );
  }
}

class TransactionScreenState extends State<TransactionScreen> {
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
            imagePath: ImageConstant.imgTransaction,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
