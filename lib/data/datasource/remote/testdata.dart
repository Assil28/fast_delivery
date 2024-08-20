import 'package:fast_delivery/core/class/crud.dart';
import 'package:fast_delivery/linkapi.dart';

class TestData {

  Crud crud;

  TestData(this.crud);

  getData()async{
    var response = await crud.postData(LinkApi.test, {});
    return response.fold((l) => l, (r) => r);
  }
}