import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/core/functions/handlingdatacontroller.dart';
import 'package:sneakers/core/services/services.dart';
import 'package:sneakers/data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController{

  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController{
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
late TextEditingController email;
late TextEditingController password;  

bool isshowPassword = true ;

Myservices myServices  = Get.find();
StatusRequest ? statusRequest;

showPassword(){

   isshowPassword = isshowPassword  == true ? false  :true ; 
   update();
}

  @override
  login() async{
 if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update( );
    var response = await loginData.postdata(email.text, password.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       // myServices.sharedPreferences.setString("id", response['data']['users_id']);
        myServices.sharedPreferences.setString("email", response['data']['users_email']);
        myServices.sharedPreferences.setString("username", response['data']['users_name']);
        myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
        Get.offNamed(AppRoute.homepage);
      } else {
        Get.defaultDialog(title: "Warning ",middleText: "Email or Password Not Correct");
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
    }
     else {}
  }
   @override
  goToSignUp(){
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit(){
    
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }
    @override
  void dispose (){
    email.dispose();
    password.dispose();

    super.dispose();
  }
  
  @override
  goToForgetPassword() {
      Get.toNamed(AppRoute.forgetPassword);
  }

 
}