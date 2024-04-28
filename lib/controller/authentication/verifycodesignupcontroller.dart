import 'package:get/get.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/message_manager.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/core/functions/handlingdatacontroller.dart';
import 'package:sneakers/data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignUpData verfiyCodeSignUpData = VerifyCodeSignUpData(Get.find());
 

  String? email;

  StatusRequest? statusRequest;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdata(email!, verfiyCodeSignUp); 
    statusRequest = handlingData(response);
    print('==============${response['status']}');
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') { 
        Get.offNamed(AppRoute.successSignUp);
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
    email = Get.arguments['email'];
    super.onInit();
  }
}