import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

//
class OrdersDetailsData {
  Crud crud;
  OrdersDetailsData(this.crud);
  getData(String id) async {
    var response = await crud.postData(LinkApi.detailsorders, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}