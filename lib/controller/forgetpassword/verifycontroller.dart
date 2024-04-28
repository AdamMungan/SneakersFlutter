import 'package:get/get.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/core/functions/handlingdatacontroller.dart';
import 'package:sneakers/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/verify.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {  
  String? email ;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData = VerifyCodeForgetPasswordData(Get.find());

  StatusRequest? statusRequest ;

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async{
        statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeForgetPasswordData.postdata(email!, verifycode); 
    statusRequest = handlingData(response);
    print('==============${response['status']}');
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') { 
            Get.offNamed(AppRoute.resetPassword , arguments:  {
              "email" : email
            });
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();

  }

  @override
  void onInit() {  
    email = Get.arguments ['email'];
    super.onInit();
  }

 
}