import 'package:fast_delivery/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/core/constant/routes.dart';
import 'package:fast_delivery/view/widget/language/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLang(textbutton: "Ar", onPressed: () {
              controller.changeLAng("ar");
              Get.toNamed(AppRoutes.onBoarding);
            }),
            CustomButtonLang(textbutton: "En", onPressed: () {
              controller.changeLAng("en");
              Get.toNamed(AppRoutes.onBoarding);
            }),
          ],
        ),
      ),
    );
  }
}
