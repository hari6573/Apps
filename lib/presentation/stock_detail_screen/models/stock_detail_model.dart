import 'two_item_model.dart';
import '../../../core/app_export.dart';
import 'detailsahamtabs_item_model.dart';

class StockDetailModel {
  List<TwoItemModel> twoItemList = List.generate(5, (index) => TwoItemModel());

  List<DetailsahamtabsItemModel> detailsahamtabsItemList = [
    DetailsahamtabsItemModel(tabItem: "Analisis"),
    DetailsahamtabsItemModel(tabItem: "News"),
    DetailsahamtabsItemModel(tabItem: "Orderbook"),
    DetailsahamtabsItemModel(tabItem: "Key Statistics"),
    DetailsahamtabsItemModel(tabItem: "Company Profile")
  ];
}
