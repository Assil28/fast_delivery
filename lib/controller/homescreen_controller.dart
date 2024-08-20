import 'package:fast_delivery/view/screen/orders/accepted.dart';
import 'package:fast_delivery/view/screen/orders/pending.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/view/screen/settings.dart';

//

abstract class HomeScreenController extends GetxController {
  // pour se deplacer entre les page (currentpage num l page l nahna fiha)
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  //asemi les pages l ch naviger binethom
  List bottomappbar = [
    {"title": "Pending", 'icon': Icons.home},
    {"title": "Accepted", 'icon': Icons.done_all_outlined},
    {"title": "Settings", 'icon': Icons.settings},
  ];

  // les pages l bch naviger binethom fl homeScreen
  List<Widget> listPage = [
    const OrdersPending(),
    const OrdersAccepted(),
    const SettingsScreen()
    
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
