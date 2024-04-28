import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/core/functions/handlingdatacontroller.dart';
import 'package:sneakers/data/datasource/remote/auth/singup.dart';
import 'package:sneakers/view/screen/authentication/signup.dart';

abstract class SignUpController extends GetxController{

  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
late TextEditingController username;
late TextEditingController email;  
late TextEditingController phone;  
late TextEditingController password;  

 StatusRequest ? statusRequest = StatusRequest.none ;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp()async {  
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update( );
    var response = await signupData.postdata(username.text, password.text, email.text, phone.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['STATUS'] == "SUCCESSFUL") {
        Get.offNamed(AppRoute.verifyCodeSignUp, arguments: {
          "email" : email.text
        });
      } else {
        Get.defaultDialog(title: "Warning ",middleText: "Phone Number or Email already exits ");
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
    }
     else {}
  }
   @override
  goToSignIn(){

    Get.offNamed(AppRoute.Login);
  }

  @override
  void onInit(){
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }
    @override
  void dispose (){
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}