import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/controller/orders/pending_controller.dart';
import 'package:fast_delivery/core/class/handlingdataview.dart';
import 'package:fast_delivery/view/widget/orders/orderslistcard.dart';

//

class OrdersPending extends StatelessWidget {
  const OrdersPending({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OrdersPendingController());
    return Container(
      padding: const EdgeInsets.all(10),
      child: GetBuilder<OrdersPendingController>(
          builder: ((controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: ((context, index) =>
                    CardOrdersList(listdata: controller.data[index])),
              )))),
    );
  }
}
