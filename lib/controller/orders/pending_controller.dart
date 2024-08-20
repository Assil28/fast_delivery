import 'package:get/get.dart';
import 'package:fast_delivery/core/class/statusrequest.dart';
import 'package:fast_delivery/core/functions/handlingdatacontroller.dart';
import 'package:fast_delivery/core/services/services.dart';
import 'package:fast_delivery/data/datasource/model/ordersmodel.dart';
import 'package:fast_delivery/data/datasource/remote/orders/pending_data.dart';

//

class OrdersPendingController extends GetxController {
  OrdersPendingData ordersPendingData = OrdersPendingData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  String printOrderType(String val) {
    //5ater f dataBase hatin 0 et 1
    if (val == "0") {
      // return "delivery";
      return "89".tr;
    } else {
      //return "Recive";
      return "106".tr;
    }
  }

  String printPaymentMethod(String val) {
    //5ater f dataBase hatin 0 et 1
    if (val == "0") {
      //return "Cash On Delivery";
      return "86".tr;
    } else {
      //return "Payment Card";
      return "87".tr;
    }
  }

  String printOrderStatus(String val) {
    if (val == "0") {
      //return "Pending Approval";
      return "107".tr;
    } else if (val == "1") {
      //return "The Order is being Prepared ";
      return "108".tr;
    } else if (val == "2") {
      //return "Ready To Picked up by Delivery man";
      return "109".tr;
    } else if (val == "3") {
      // return "On The Way";
      return "110".tr;
    } else {
      //return "Archive";
      return "111".tr;
    }
  }

  getOrders() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersPendingData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  aprouveOrders(String userid, String orderid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersPendingData.aprouveOrder(
      myServices.sharedPreferences.getString("id")!,
      userid,
      orderid,
    );
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  refrehOrder() {
    getOrders();
  }

  @override
  void onInit() {
    getOrders();
    super.onInit();
  }
}
