import 'models/order_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/order_detail_provider.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OrderDetailScreenState createState() => OrderDetailScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderDetailProvider(),
      child: OrderDetailScreen(),
    );
  }
}

class OrderDetailScreenState extends State<OrderDetailScreen> {
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
            imagePath: ImageConstant.imgOrderDetail,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
