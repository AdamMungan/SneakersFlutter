import 'dart:ffi';

import 'package:get/get.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/functions/handlingdatacontroller.dart';
import 'package:sneakers/core/services/services.dart';
import 'package:sneakers/data/datasource/remote/homedata.dart';

abstract class HomeController extends GetxController{
  initialData ();

  getdata();
}

class HomeControllerImp extends HomeController{
  
  Myservices myServices = Get.find();

  String? username ;


  Homedata homedata = Homedata(Get.find());

  //List data = [];
  List categories= [];
  List items= [];

  //List items= [];



  late StatusRequest statusRequest;

 @override
  initialData (){
   username= myServices.sharedPreferences.getString("username");
 }

 
 @override
  void onInit() {
     getdata() ;
    initialData();
    super.onInit();
  }
  
  @override
  getdata() async{
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);

      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
    

  }
}