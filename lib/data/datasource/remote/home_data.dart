import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(LinkApi.homepage, {});
    return response.fold((l) => l, (r) => r);
  }

  // searchData(String search) async {
  //   var response = await crud.postData(LinkApi.searchitems, {"search": search});
  //   return response.fold((l) => l, (r) => r);
  // }
}
