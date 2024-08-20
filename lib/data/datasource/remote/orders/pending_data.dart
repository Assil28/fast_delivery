import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

//

class OrdersPendingData {
  Crud crud;

  OrdersPendingData(this.crud);

  getData() async {
    var response = await crud.postData(LinkApi.viewpendingorders, {});
    return response.fold((l) => l, (r) => r);
  }

  aprouveOrder(String deliveryid, String userid, String orderid) async {
    var response = await crud.postData(LinkApi.aprouveorders, {
      "deliveryid": deliveryid,
      "usersid": userid,
      "ordersid": orderid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
