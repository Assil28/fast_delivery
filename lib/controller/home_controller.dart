import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:fast_delivery/core/class/statusrequest.dart';
import 'package:fast_delivery/core/functions/handlingdatacontroller.dart';
import 'package:fast_delivery/core/services/services.dart';
import 'package:fast_delivery/data/datasource/remote/home_data.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
}

class HomeControllerImp extends HomeController {
  //3malna appel l service mte3na bech najem nesta3mel sharedpreference l hatitha fih
  MyServices myServices = Get.find();
  String? username;
  String? id;

  String? lang;

  HomeData homeData = HomeData(Get.find());
  List categories = [];
  List items = [];
  List data = [];

// settings
  List settingsdata = [];
  String titleHomeCard = "";
  String bodyHomeCard = "";
  String deliveryTime = "";

  late StatusRequest statusRequest;

  @override
  initialData() {
    lang = myServices.sharedPreferences.getString("lan");
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getData();
    initialData();

    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == " success") {
        // nejbed l catogies m data l jebtha mel back
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
        //get settings (les textes constants )
        settingsdata.addAll(response['settings']['data']);
        titleHomeCard = settingsdata[0]['settings_titlehome'];
        bodyHomeCard = settingsdata[0]['settings_bodyhome'];
        deliveryTime =  settingsdata[0]['settings_deliverytime'];
        myServices.sharedPreferences.setString("deliveryTime", deliveryTime);
        /*** settings end */
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    // pour faire refresh lel ui
    update();
  }



  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}


