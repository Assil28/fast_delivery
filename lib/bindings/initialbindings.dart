import 'package:get/get.dart';
import 'package:fast_delivery/core/class/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
   Get.put(Crud());
  }
  
}