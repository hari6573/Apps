import '../../../core/app_export.dart';

/// This class is used in the [itemlisttrending_item_widget] screen.
class ItemlisttrendingItemModel {
  ItemlisttrendingItemModel({
    this.image,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle24;
    text1 = text1 ?? "GOTO";
    text2 = text2 ?? "GoTo Gojek Tokopedia Tbk";
    text3 = text3 ?? "198";
    text4 = text4 ?? "+1 (+0,53%)";
    id = id ?? "";
  }

  String? image;

  String? text1;

  String? text2;

  String? text3;

  String? text4;

  String? id;
}
