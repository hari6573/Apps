import '../models/detailsahamtabs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class DetailsahamtabsItemWidget extends StatelessWidget {
  DetailsahamtabsItemWidget(
    this.detailsahamtabsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DetailsahamtabsItemModel detailsahamtabsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 63.h,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            detailsahamtabsItemModelObj.tabItem!,
            style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
