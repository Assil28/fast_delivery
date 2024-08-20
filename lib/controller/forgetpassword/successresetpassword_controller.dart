 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onInit() {
     super.onInit();
  }


}
