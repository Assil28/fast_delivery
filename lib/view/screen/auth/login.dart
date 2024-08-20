import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/controller/auth/login_controller.dart';
import 'package:fast_delivery/core/class/handlingdataview.dart';
import 'package:fast_delivery/core/constant/color.dart';
import 'package:fast_delivery/core/functions/alertexitapp.dart';
import 'package:fast_delivery/core/functions/validinput.dart';
import 'package:fast_delivery/view/widget/auth/custombuttonauth.dart';
import 'package:fast_delivery/view/widget/auth/customtextbodyauth.dart';
import 'package:fast_delivery/view/widget/auth/customtextformauth.dart';
import 'package:fast_delivery/view/widget/auth/customtexttitleauth.dart';
import 'package:fast_delivery/view/widget/auth/logoauth.dart';
import 'package:fast_delivery/view/widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("9".tr,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColor.grey,
                  )),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<LoginControllerImp>(
                builder: (controller) => HandlingDataRequest(
                    statusRequest: controller.statusRequest,
                    widget: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            const LogoAuth(),
                            CustomTextTitleAuth(
                              text: "2".tr,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextBodyAuth(
                              text: "3".tr,
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            CustomTextFormAuth(
                              isNumber: false,
                              valid: (val) {
                                return validInput(val!, 5, 100, "email");
                              },
                              hinttext: "6".tr,
                              labeltext: "4".tr,
                              icondata: Icons.email_outlined,
                              mycontroller: controller.email,
                            ),
                            GetBuilder<LoginControllerImp>(
                              builder: (controller) => CustomTextFormAuth(
                                  obscureText: controller.isShowPassword,
                                  onTapIcon: () {
                                    controller.showPassword();
                                  },
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 5, 30, "password");
                                  },
                                  hinttext: "7".tr,
                                  labeltext: "5".tr,
                                  icondata: Icons.lock_outlined,
                                  mycontroller: controller.password),
                            ),
                            InkWell(
                              onTap: () {
                                controller.goToForgetPassword();
                              },
                              child: Text(
                                "8".tr,
                                textAlign: TextAlign.end,
                              ),
                            ),
                            CustomButtonAuth(
                                text: "9".tr,
                                onPressed: () {
                                  controller.login();
                                }),
                            const SizedBox(
                              height: 30,
                            ),
                           
                          ],
                        ),
                      ),
                    )))));
  }
}
