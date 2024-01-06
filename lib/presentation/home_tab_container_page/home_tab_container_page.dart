import 'models/home_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/home_page/home_page.dart';
import 'package:hari_s_application11/widgets/app_bar/appbar_title.dart';
import 'package:hari_s_application11/widgets/app_bar/appbar_title_image.dart';
import 'package:hari_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application11/widgets/custom_search_view.dart';
import 'provider/home_tab_container_provider.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeTabContainerProvider(),
      child: HomeTabContainerPage(),
    );
  }
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child:
                    Selector<HomeTabContainerProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 21.v),
              _buildChartColumn(context),
              SizedBox(height: 19.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Row(
        children: [
          AppbarTitleImage(
            imagePath: ImageConstant.imgIcBaselineCandlestickChart,
          ),
          AppbarTitle(
            text: "lbl_stockvest".tr,
            margin: EdgeInsets.only(
              left: 5.h,
              bottom: 1.v,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.fromLTRB(136.h, 14.v, 136.h, 17.v),
          decoration: BoxDecoration(
            color: appTheme.limeA200,
            borderRadius: BorderRadius.circular(
              10.h,
            ),
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildChartColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_ihsg".tr,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_7_056_04".tr,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 36.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_35_72_0_50".tr,
              style: TextStyle(
                color: appTheme.pink600,
                fontSize: 16.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 140.v,
            width: 350.h,
          ),
          SizedBox(height: 5.v),
          _buildChartRow(
            context,
            highText: "lbl_open".tr,
            numberText: "lbl_7_091_76".tr,
            valueText: "lbl_lot".tr,
            counterText: "lbl_186_26_m".tr,
          ),
          SizedBox(height: 5.v),
          _buildChartRow(
            context,
            highText: "lbl_high".tr,
            numberText: "lbl_7_100_81".tr,
            valueText: "lbl_value".tr,
            counterText: "lbl_9_88_t".tr,
          ),
          SizedBox(height: 5.v),
          _buildChartRow(
            context,
            highText: "lbl_low".tr,
            numberText: "lbl_7_016_70".tr,
            valueText: "lbl_freq".tr,
            counterText: "lbl_1_10_m".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 26.v,
      width: 347.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.blueGray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.blueGray900,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_trending".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_top_gainer".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_top_loser".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_most_active".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 251.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChartRow(
    BuildContext context, {
    required String highText,
    required String numberText,
    required String valueText,
    required String counterText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          highText,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(
          flex: 42,
        ),
        Text(
          numberText,
          style: TextStyle(
            color: appTheme.teal300,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(
          flex: 14,
        ),
        Text(
          valueText,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(
          flex: 43,
        ),
        Text(
          counterText,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
