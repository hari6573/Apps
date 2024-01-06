import '../models/listitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ListitemItemWidget extends StatelessWidget {
  ListitemItemWidget(
    this.listitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListitemItemModel listitemItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: listitemItemModelObj?.gotoImage,
          height: 42.adaptSize,
          width: 42.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listitemItemModelObj.gotoText!,
                style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                listitemItemModelObj.gotoGojekText!,
                style: TextStyle(
                  color: appTheme.blueGray400,
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
                  listitemItemModelObj.oneHundredNinetyEightText!,
                  style: TextStyle(
                    color: appTheme.blueGray900,
                    fontSize: 14.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                listitemItemModelObj.oneThousandFiftyThreeText!,
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
