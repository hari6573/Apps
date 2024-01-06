import 'package:flutter/material.dart';
import 'package:hari_s_application11/presentation/portfolio_screen/portfolio_screen.dart';
import 'package:hari_s_application11/presentation/splash_screen/splash_screen.dart';
import 'package:hari_s_application11/presentation/login_screen/login_screen.dart';
import 'package:hari_s_application11/presentation/login_filled_screen/login_filled_screen.dart';
import 'package:hari_s_application11/presentation/registration_screen/registration_screen.dart';
import 'package:hari_s_application11/presentation/registration_two_screen/registration_two_screen.dart';
import 'package:hari_s_application11/presentation/registration_three_screen/registration_three_screen.dart';
import 'package:hari_s_application11/presentation/registration_four_screen/registration_four_screen.dart';
import 'package:hari_s_application11/presentation/registration_five_screen/registration_five_screen.dart';
import 'package:hari_s_application11/presentation/registration_six_screen/registration_six_screen.dart';
import 'package:hari_s_application11/presentation/registration_seven_screen/registration_seven_screen.dart';
import 'package:hari_s_application11/presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import 'package:hari_s_application11/presentation/forgot_password_two_screen/forgot_password_two_screen.dart';
import 'package:hari_s_application11/presentation/forgot_password_four_screen/forgot_password_four_screen.dart';
import 'package:hari_s_application11/presentation/home_container_screen/home_container_screen.dart';
import 'package:hari_s_application11/presentation/stock_detail_screen/stock_detail_screen.dart';
import 'package:hari_s_application11/presentation/search_screen/search_screen.dart';
import 'package:hari_s_application11/presentation/buy_stock_screen/buy_stock_screen.dart';
import 'package:hari_s_application11/presentation/buy_confirmation_screen/buy_confirmation_screen.dart';
import 'package:hari_s_application11/presentation/buy_success_screen/buy_success_screen.dart';
import 'package:hari_s_application11/presentation/sell_stock_screen/sell_stock_screen.dart';
import 'package:hari_s_application11/presentation/sell_confirmation_screen/sell_confirmation_screen.dart';
import 'package:hari_s_application11/presentation/sell_success_screen/sell_success_screen.dart';
import 'package:hari_s_application11/presentation/transaction_screen/transaction_screen.dart';
import 'package:hari_s_application11/presentation/order_detail_screen/order_detail_screen.dart';
import 'package:hari_s_application11/presentation/cancel_order_screen/cancel_order_screen.dart';
import 'package:hari_s_application11/presentation/cancel_order_success_screen/cancel_order_success_screen.dart';
import 'package:hari_s_application11/presentation/watchlist_screen/watchlist_screen.dart';
import 'package:hari_s_application11/presentation/detail_portfolio_screen/detail_portfolio_screen.dart';
import 'package:hari_s_application11/presentation/profile_screen/profile_screen.dart';
import 'package:hari_s_application11/presentation/deposit_screen/deposit_screen.dart';
import 'package:hari_s_application11/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String portfolioScreen = '/portfolio_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String loginFilledScreen = '/login_filled_screen';

  static const String registrationScreen = '/registration_screen';

  static const String registrationTwoScreen = '/registration_two_screen';

  static const String registrationThreeScreen = '/registration_three_screen';

  static const String registrationFourScreen = '/registration_four_screen';

  static const String registrationFiveScreen = '/registration_five_screen';

  static const String registrationSixScreen = '/registration_six_screen';

  static const String registrationSevenScreen = '/registration_seven_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String forgotPasswordTwoScreen = '/forgot_password_two_screen';

  static const String forgotPasswordFourScreen = '/forgot_password_four_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String stockDetailScreen = '/stock_detail_screen';

  static const String searchScreen = '/search_screen';

  static const String buyStockScreen = '/buy_stock_screen';

  static const String buyConfirmationScreen = '/buy_confirmation_screen';

  static const String buySuccessScreen = '/buy_success_screen';

  static const String sellStockScreen = '/sell_stock_screen';

  static const String sellConfirmationScreen = '/sell_confirmation_screen';

  static const String sellSuccessScreen = '/sell_success_screen';

  static const String transactionScreen = '/transaction_screen';

  static const String orderDetailScreen = '/order_detail_screen';

  static const String cancelOrderScreen = '/cancel_order_screen';

  static const String cancelOrderSuccessScreen = '/cancel_order_success_screen';

  static const String watchlistScreen = '/watchlist_screen';

  static const String detailPortfolioScreen = '/detail_portfolio_screen';

  static const String profileScreen = '/profile_screen';

  static const String depositScreen = '/deposit_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        portfolioScreen: PortfolioScreen.builder,
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        loginFilledScreen: LoginFilledScreen.builder,
        registrationScreen: RegistrationScreen.builder,
        registrationTwoScreen: RegistrationTwoScreen.builder,
        registrationThreeScreen: RegistrationThreeScreen.builder,
        registrationFourScreen: RegistrationFourScreen.builder,
        registrationFiveScreen: RegistrationFiveScreen.builder,
        registrationSixScreen: RegistrationSixScreen.builder,
        registrationSevenScreen: RegistrationSevenScreen.builder,
        forgotPasswordOneScreen: ForgotPasswordOneScreen.builder,
        forgotPasswordTwoScreen: ForgotPasswordTwoScreen.builder,
        forgotPasswordFourScreen: ForgotPasswordFourScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        stockDetailScreen: StockDetailScreen.builder,
        searchScreen: SearchScreen.builder,
        buyStockScreen: BuyStockScreen.builder,
        buyConfirmationScreen: BuyConfirmationScreen.builder,
        buySuccessScreen: BuySuccessScreen.builder,
        sellStockScreen: SellStockScreen.builder,
        sellConfirmationScreen: SellConfirmationScreen.builder,
        sellSuccessScreen: SellSuccessScreen.builder,
        transactionScreen: TransactionScreen.builder,
        orderDetailScreen: OrderDetailScreen.builder,
        cancelOrderScreen: CancelOrderScreen.builder,
        cancelOrderSuccessScreen: CancelOrderSuccessScreen.builder,
        watchlistScreen: WatchlistScreen.builder,
        detailPortfolioScreen: DetailPortfolioScreen.builder,
        profileScreen: ProfileScreen.builder,
        depositScreen: DepositScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: PortfolioScreen.builder
      };
}
