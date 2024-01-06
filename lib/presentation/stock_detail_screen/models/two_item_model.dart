import '../../../core/app_export.dart';

/// This class is used in the [two_item_widget] screen.
class TwoItemModel {
  TwoItemModel({
    this.sevenHundred,
    this.isSelected,
  }) {
    sevenHundred = sevenHundred ?? "700";
    isSelected = isSelected ?? false;
  }

  String? sevenHundred;

  bool? isSelected;
}
