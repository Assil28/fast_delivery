import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);

  postdata(String email) async {
    var response = await crud.postData(LinkApi.checkEmail, {
      "email": email,
     });
    return response.fold((l) => l, (r) => r);
  }
}
