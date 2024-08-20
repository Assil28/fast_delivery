import 'package:fast_delivery/controller/orders/accepted_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/controller/orders/pending_controller.dart';
import 'package:fast_delivery/core/constant/color.dart';
import 'package:fast_delivery/core/constant/routes.dart';
import 'package:fast_delivery/data/datasource/model/ordersmodel.dart';
import 'package:jiffy/jiffy.dart';

//

class CardOrdersListAccepted extends GetView<OrdersAcceptedController> {
  final OrdersModel listdata;
  const CardOrdersListAccepted({super.key, required this.listdata});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("${'105'.tr} #${listdata.ordersId}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text(listdata.ordersDatetime!),
                  Text(
                    Jiffy.parse(listdata.ordersDatetime!, pattern: "yyyy-MM-dd")
                        .fromNow(),
                    style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Divider(),
              Text(
                "${'98'.tr} ${controller.printOrderType(listdata.ordersType!)}",
              ),
              Text("${'99'.tr} ${listdata.ordersPrice} \$"),
              Text("${'100'.tr} ${listdata.ordersPricedelivery} \$ "),
              Text(
                  "${'101'.tr}${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} "),
              Text(
                  "${'102'.tr} ${controller.printOrderStatus(listdata.ordersStatus!)} "),
              const Divider(),
              Row(
                children: [
                  Text("${'70'.tr} : ${listdata.ordersId} \$ ",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.ordersdetails,
                          arguments: {"ordersmodel": listdata});
                    },
                    color: AppColor.thirdColor,
                    textColor: AppColor.secondColor,
                    child: Text("104".tr),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  // idha cest bon saret livraison
                  if (listdata.ordersRating == "3")
                    MaterialButton(
                      onPressed: () {
                        controller.doneDelivery(
                            listdata.ordersId!, listdata.ordersUsersid!);
                      },
                      color: AppColor.thirdColor,
                      textColor: AppColor.secondColor,
                      child: Text("122".tr),
                    ),
                ],
              ),
            ],
          )),
    );
  }
}
