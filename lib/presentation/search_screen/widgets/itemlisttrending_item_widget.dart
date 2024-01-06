import '../models/itemlisttrending_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:hari_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ItemlisttrendingItemWidget extends StatelessWidget {
  ItemlisttrendingItemWidget(
    this.itemlisttrendingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemlisttrendingItemModel itemlisttrendingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: itemlisttrendingItemModelObj?.image,
          height: 42.adaptSize,
          width: 42.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemlisttrendingItemModelObj.text1!,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                itemlisttrendingItemModelObj.text2!,
                style: TextStyle(
                  color: appTheme.gray400,
                  fontSize: 12.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  itemlisttrendingItemModelObj.text3!,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 14.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                itemlisttrendingItemModelObj.text4!,
                style: TextStyle(
                  color: appTheme.teal300,
                  fontSize: 12.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
