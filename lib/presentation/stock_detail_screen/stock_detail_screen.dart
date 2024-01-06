import '../stock_detail_screen/widgets/detailsahamtabs_item_widget.dart';
import '../stock_detail_screen/widgets/two_item_widget.dart';
import 'models/detailsahamtabs_item_model.dart';
import 'models/stock_detail_model.dart';
import 'models/two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/widgets/app_bar/appbar_leading_image.dart';
import 'package:hari_s_application11/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application11/widgets/custom_elevated_button.dart';
import 'package:hari_s_application11/widgets/custom_outlined_button.dart';
import 'provider/stock_detail_provider.dart';

class StockDetailScreen extends StatefulWidget {
  const StockDetailScreen({Key? key}) : super(key: key);

  @override
  StockDetailScreenState createState() => StockDetailScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => StockDetailProvider(), child: StockDetailScreen());
  }
}

class StockDetailScreenState extends State<StockDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle241,
                                height: 42.adaptSize,
                                width: 42.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_aces".tr,
                                          style: TextStyle(
                                              color: appTheme.blueGray900,
                                              fontSize: 14.fSize,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(height: 6.v),
                                      Text("msg_ace_hardware_indonesia".tr,
                                          style: TextStyle(
                                              color: appTheme.gray400,
                                              fontSize: 12.fSize,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400))
                                    ]))
                          ]))),
                  SizedBox(height: 10.v),
                  _buildButtonContainer(context),
                  SizedBox(height: 11.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 140.v,
                      width: 350.h),
                  _buildHorizontalContainer(context),
                  SizedBox(height: 20.v),
                  _buildDetailSahamTabs(context),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_key_statistics".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray900,
                                  fontSize: 20.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700)))),
                  SizedBox(height: 18.v),
                  _buildTableContainer(context),
                  _buildButton(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVerticalContainer,
              margin: EdgeInsets.only(left: 20.h, top: 13.v, right: 15.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgRating,
              margin: EdgeInsets.only(left: 20.h, top: 13.v, right: 35.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildButtonContainer(BuildContext context) {
    return SizedBox(
        height: 71.v,
        width: 350.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("lbl_5_0_72".tr,
                  style: TextStyle(
                      color: appTheme.pink600,
                      fontSize: 16.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500))),
          Align(
              alignment: Alignment.topCenter,
              child: Consumer<StockDetailProvider>(
                  builder: (context, provider, child) {
                return Wrap(
                    runSpacing: 105.64.v,
                    spacing: 105.64.h,
                    children: List<Widget>.generate(
                        provider.stockDetailModelObj.twoItemList.length,
                        (index) {
                      TwoItemModel model =
                          provider.stockDetailModelObj.twoItemList[index];
                      return TwoItemWidget(model, onSelectedChipView1: (value) {
                        provider.onSelectedChipView1(index, value);
                      });
                    }));
              }))
        ]));
  }

  /// Section Widget
  Widget _buildHorizontalContainer(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Text("lbl_1d".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500))),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: SizedBox(
                      height: 23.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          indent: 4.h,
                          endIndent: 4.h))),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 4.v, bottom: 4.v),
                  child: Text("lbl_5d".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500))),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: SizedBox(
                      height: 23.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          indent: 4.h,
                          endIndent: 4.h))),
              CustomElevatedButton(
                  height: 24.v,
                  width: 41.h,
                  text: "lbl_1m".tr,
                  margin: EdgeInsets.only(left: 9.h)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: SizedBox(
                      height: 23.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          indent: 4.h,
                          endIndent: 4.h))),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
                  child: Text("lbl_6m".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500))),
              Container(
                  height: 14.v,
                  width: 1.h,
                  margin: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 4.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(1.h))),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
                  child: Text("lbl_ytd".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500))),
              Container(
                  height: 14.v,
                  width: 1.h,
                  margin: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(1.h))),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 4.v),
                  child: Text("lbl_1y".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500))),
              Container(
                  height: 14.v,
                  width: 1.h,
                  margin: EdgeInsets.only(left: 11.h, top: 4.v, bottom: 4.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(1.h))),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 4.v, bottom: 4.v),
                  child: Text("lbl_3y".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500))),
              Container(
                  height: 14.v,
                  width: 1.h,
                  margin: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(1.h))),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 4.v, bottom: 4.v),
                  child: Text("lbl_5y".tr,
                      style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)))
            ]));
  }

  /// Section Widget
  Widget _buildDetailSahamTabs(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 26.v,
            child: Consumer<StockDetailProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10.h);
                  },
                  itemCount: provider
                      .stockDetailModelObj.detailsahamtabsItemList.length,
                  itemBuilder: (context, index) {
                    DetailsahamtabsItemModel model = provider
                        .stockDetailModelObj.detailsahamtabsItemList[index];
                    return DetailsahamtabsItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildTableContainer(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_net_income".tr,
                  style: TextStyle(
                      color: appTheme.blueGray900,
                      fontSize: 16.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600))),
          SizedBox(height: 11.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "lbl_market_cap".tr,
              bCounterText: "lbl_10_436_b".tr),
          SizedBox(height: 10.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_share_outstanding".tr,
              bCounterText: "lbl_15_02_b".tr),
          SizedBox(height: 9.v),
          Container(
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomOutlinedButton(
                      width: 87.h,
                      text: "lbl_period".tr,
                      buttonStyle: CustomButtonStyles.outlineGray),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray400,
                      child: Text("lbl_2022".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600))),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray400,
                      child: Text("lbl_2021".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600))),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray400,
                      child: Text("lbl_2020".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600)))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomOutlinedButton(width: 87.h, text: "lbl_q1".tr),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray4001,
                      child: Text("lbl_454_b".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400))),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray4001,
                      child: Text("lbl_448_b".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400))),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray4001,
                      child: Text("lbl_439_b".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400)))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomOutlinedButton(width: 87.h, text: "lbl_q2".tr),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray4001,
                      child: Text("lbl_362_b".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400))),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray4001,
                      child: Text("lbl_355_b".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400))),
                  Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray4001,
                      child: Text("lbl_331_b".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400)))
                ]),
                _buildRow(context,
                    cell: "lbl_q3".tr,
                    cell1: "lbl".tr,
                    bCounter: "lbl_46_b".tr,
                    bCounter1: "lbl_329_b".tr),
                SizedBox(height: 9.v),
                _buildRow(context,
                    cell: "lbl_q4".tr,
                    cell1: "lbl".tr,
                    bCounter: "lbl_382_b".tr,
                    bCounter1: "lbl_389_b".tr),
                SizedBox(height: 45.v),
                _buildRow1(context,
                    tTMQ: "lbl_annual".tr,
                    bCounter: "lbl_1_631_b".tr,
                    bCounter1: "lbl_1_523_b".tr,
                    bCounter2: "lbl_1_489_b".tr),
                SizedBox(height: 81.v),
                _buildRow1(context,
                    tTMQ: "lbl_ttm_q2".tr,
                    bCounter: "lbl_1_535_b".tr,
                    bCounter1: "lbl_1_522_b".tr,
                    bCounter2: "lbl_1_330_b".tr)
              ])),
          SizedBox(height: 147.v),
          Text("lbl_valuation".tr,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 16.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 181.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_pe_ratio".tr,
              bCounterText: "lbl_6_40".tr),
          SizedBox(height: 207.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_pe_ratio2".tr,
              bCounterText: "lbl_6_80".tr),
          SizedBox(height: 233.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_forward_pe_ratio".tr,
              bCounterText: "lbl".tr),
          SizedBox(height: 259.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_price_to".tr,
              bCounterText: "lbl_1_53".tr),
          SizedBox(height: 285.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_price_to2".tr,
              bCounterText: "lbl_0_98".tr),
          SizedBox(height: 311.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_price_to3".tr,
              bCounterText: "lbl_4_82".tr),
          SizedBox(height: 337.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_price_to4".tr,
              bCounterText: "lbl_5_18".tr),
          SizedBox(height: 383.v),
          Text("lbl_solvency".tr,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 16.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 417.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_current_ratio_quarter".tr,
              bCounterText: "lbl".tr),
          SizedBox(height: 443.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_quick_ratio_quarter".tr,
              bCounterText: "lbl".tr),
          SizedBox(height: 469.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_debt_to_equity_ratio".tr,
              bCounterText: "lbl".tr),
          SizedBox(height: 515.v),
          Text("lbl_dividend".tr,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 16.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 549.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "lbl_dividend".tr,
              bCounterText: "lbl_52_11".tr),
          SizedBox(height: 575.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "lbl_payout_ratio".tr,
              bCounterText: "lbl_51_37".tr),
          SizedBox(height: 601.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "lbl_dividend_yield".tr,
              bCounterText: "lbl_7_50".tr),
          SizedBox(height: 627.v),
          _buildParagraphContainer(context,
              shareOutstandingText: "msg_latest_dividend".tr,
              bCounterText: "lbl_28_mar_22".tr)
        ]));
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 20.v),
        decoration: AppDecoration.fillGray50,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_sell".tr,
                  margin: EdgeInsets.only(right: 10.h),
                  buttonStyle: CustomButtonStyles.outlineDeepPurpleA)),
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_buy".tr,
                  margin: EdgeInsets.only(left: 10.h),
                  buttonStyle: CustomButtonStyles.outlineDeepPurpleATL16))
        ]));
  }

  /// Common widget
  Widget _buildParagraphContainer(
    BuildContext context, {
    required String shareOutstandingText,
    required String bCounterText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(shareOutstandingText,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400)),
      Text(bCounterText,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600))
    ]);
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String cell,
    required String cell1,
    required String bCounter,
    required String bCounter1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 87.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Text(cell,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 12.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600))),
      Container(
          width: 87.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Text(cell1,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 12.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400))),
      Container(
          width: 87.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Text(bCounter,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 12.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400))),
      Container(
          width: 87.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Text(bCounter1,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 12.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400)))
    ]);
  }

  /// Common widget
  Widget _buildRow1(
    BuildContext context, {
    required String tTMQ,
    required String bCounter,
    required String bCounter1,
    required String bCounter2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: EdgeInsets.only(left: 11.h, right: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            SizedBox(height: 10.v),
            Text(tTMQ,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: appTheme.blueGray900,
                    fontSize: 12.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600))
          ])),
      Container(
          padding: EdgeInsets.only(left: 11.h, right: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            SizedBox(height: 10.v),
            Text(bCounter,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: appTheme.blueGray900,
                    fontSize: 12.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400))
          ])),
      Container(
          padding: EdgeInsets.only(left: 11.h, right: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            SizedBox(height: 10.v),
            Text(bCounter1,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: appTheme.blueGray900,
                    fontSize: 12.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400))
          ])),
      Container(
          padding: EdgeInsets.only(left: 11.h, right: 12.h),
          decoration: AppDecoration.outlineGray4001,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            SizedBox(height: 10.v),
            Text(bCounter2,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: appTheme.blueGray900,
                    fontSize: 12.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
