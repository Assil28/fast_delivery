import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

class NotificationData {
  Crud crud;

  NotificationData(this.crud);

  getData(String userid) async {
    var response = await crud.postData(LinkApi.notification, {"id": userid});
    return response.fold((l) => l, (r) => r);
  }
}
