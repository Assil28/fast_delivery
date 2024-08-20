import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

//
class OrdersArchiveData {
  Crud crud;

  OrdersArchiveData(this.crud);

  getData(String deliveryid) async {
    var response = await crud.postData(LinkApi.archiveorders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }


}
