import '../../../core/app_export.dart';

/// This class is used in the [listitem_item_widget] screen.
class ListitemItemModel {
  ListitemItemModel({
    this.gotoImage,
    this.gotoText,
    this.gotoGojekText,
    this.oneHundredNinetyEightText,
    this.oneThousandFiftyThreeText,
    this.id,
  }) {
    gotoImage = gotoImage ?? ImageConstant.imgRectangle24;
    gotoText = gotoText ?? "GOTO";
    gotoGojekText = gotoGojekText ?? "GoTo Gojek Tokopedia Tbk";
    oneHundredNinetyEightText = oneHundredNinetyEightText ?? "198";
    oneThousandFiftyThreeText = oneThousandFiftyThreeText ?? "+1 (+0,53%)";
    id = id ?? "";
  }

  String? gotoImage;

  String? gotoText;

  String? gotoGojekText;

  String? oneHundredNinetyEightText;

  String? oneThousandFiftyThreeText;

  String? id;
}
