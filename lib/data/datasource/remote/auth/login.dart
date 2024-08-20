import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  postdata(String email, String password) async {
    var response = await crud.postData(LinkApi.login, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
