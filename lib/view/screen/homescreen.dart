import 'package:fast_delivery/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/controller/homescreen_controller.dart';
import 'package:fast_delivery/view/widget/home/custombottomappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: const Text("Orders"),
              ),
           
              bottomNavigationBar: const CustomBottomAppBarHome(),

              // // hne 3ayetet lel les pages l bch naviger binethom   wel bottomNavBar tab9a fix
              body: WillPopScope(
                  child: controller.listPage.elementAt(controller.currentpage),
                  onWillPop: alertExitApp),
            ));
  }
}
