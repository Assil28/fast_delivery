import 'package:fast_delivery/controller/orders/accepted_controller.dart';
import 'package:fast_delivery/view/widget/orders/orderslistcardaccepted.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/core/class/handlingdataview.dart';

class OrdersAccepted extends StatelessWidget {
  const OrdersAccepted({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OrdersAcceptedController());
     return Container(
      padding: const EdgeInsets.all(10),
      child: GetBuilder<OrdersAcceptedController>(
          builder: ((controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: ((context, index) =>
                    CardOrdersListAccepted(listdata: controller.data[index])),
              )))),
    );
  }
}
