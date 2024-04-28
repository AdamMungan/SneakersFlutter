import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/core/functions/handlingdatacontroller.dart';
import 'package:sneakers/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:sneakers/view/screen/authentication/signup.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController { 
    
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest? statusRequest ;
  late TextEditingController email; 

  @override
  checkemail() async {
    if(formstate.currentState!.validate()){
            statusRequest = StatusRequest.loading;
      update( );
    var response = await checkEmailData.postdata(email.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
     print('==============${response['status']}');
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.verifyCode, arguments: {
          "email" : email.text
        });
      } else {
        Get.defaultDialog(title: "Warning ",middleText: "Email Not Found");
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
    }
  }



  @override
  void onInit() { 
    email = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    email.dispose(); 
    super.dispose();
  }
}