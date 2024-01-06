import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "portfolio".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.portfolioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login filled".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrationSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "stock detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.stockDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "buy stock".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buyStockScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "buy confirmation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buyConfirmationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "buy success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buySuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sell stock".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sellStockScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sell confirmation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.sellConfirmationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sell success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sellSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "transaction".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transactionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "order detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cancel order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cancelOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cancel order success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cancelOrderSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Watchlist".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.watchlistScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "detail portfolio".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPortfolioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "deposit".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.depositScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
