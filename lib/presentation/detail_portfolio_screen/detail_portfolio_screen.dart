import 'models/detail_portfolio_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/detail_portfolio_provider.dart';

class DetailPortfolioScreen extends StatefulWidget {
  const DetailPortfolioScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailPortfolioScreenState createState() => DetailPortfolioScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailPortfolioProvider(),
      child: DetailPortfolioScreen(),
    );
  }
}

class DetailPortfolioScreenState extends State<DetailPortfolioScreen> {
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
            imagePath: ImageConstant.imgDetailPortfolio,
            height: 844.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
