import '../search_screen/widgets/itemlisttrending_item_widget.dart';
import 'models/itemlisttrending_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/widgets/app_bar/appbar_leading_image.dart';
import 'package:hari_s_application11/widgets/app_bar/appbar_title_searchview.dart';
import 'package:hari_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SearchProvider(), child: SearchScreen());
  }
}

class SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_pencarian_terakhir".tr,
                          style: TextStyle(
                              color: appTheme.black900,
                              fontSize: 16.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 22.v),
                      _buildItemListTrending(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 54.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Selector<SearchProvider, TextEditingController?>(
            selector: (context, provider) => provider.searchController,
            builder: (context, searchController, child) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 10.h),
                  hintText: "lbl_search2".tr,
                  controller: searchController);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildItemListTrending(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 20.v);
          },
          itemCount: provider.searchModelObj.itemlisttrendingItemList.length,
          itemBuilder: (context, index) {
            ItemlisttrendingItemModel model =
                provider.searchModelObj.itemlisttrendingItemList[index];
            return ItemlisttrendingItemWidget(model);
          });
    });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
