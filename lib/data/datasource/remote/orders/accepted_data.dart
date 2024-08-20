import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

//
class OrdersAcceptedData {
  Crud crud;

  OrdersAcceptedData(this.crud);

  getData(String deliveryid) async {
    var response =
        await crud.postData(LinkApi.viewaccpetedorders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }

  doneDelivery(String orderid, String userid) async {
    var response = await crud.postData(LinkApi.doneorder, {
      "ordersid": orderid,
      "usersid": userid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
