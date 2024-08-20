import 'package:fast_delivery/controller/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custombuttomappbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            //fazet l 9assa bin lelement l fl west w lokhrin (shape w notch)
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length + 1, ((index) {
                  return Expanded(
                      child: CustomButtonAppBar(
                          textbutton: controller.bottomappbar[index]['title'],
                          icondata: controller.bottomappbar[index]['icon'],
                          onPressed: () {
                            controller.changePage(index);
                          },
                          active:
                              controller.currentpage == index ? true : false));
                }))
              ],
            )));
  }
}
