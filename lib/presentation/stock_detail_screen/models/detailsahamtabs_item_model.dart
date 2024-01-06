import '../../../core/app_export.dart';

/// This class is used in the [detailsahamtabs_item_widget] screen.
class DetailsahamtabsItemModel {
  DetailsahamtabsItemModel({
    this.tabItem,
    this.id,
  }) {
    tabItem = tabItem ?? "Analisis";
    id = id ?? "";
  }

  String? tabItem;

  String? id;
}
