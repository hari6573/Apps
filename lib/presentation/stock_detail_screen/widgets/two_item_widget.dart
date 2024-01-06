import '../models/two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  TwoItemWidget(
    this.twoItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  TwoItemModel twoItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          twoItemModelObj.sevenHundred!,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 36.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (twoItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
