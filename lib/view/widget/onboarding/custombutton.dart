import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/onboarding_controller.dart';
import 'package:sneakers/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key ? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  margin: const EdgeInsets.only(bottom: 30),
  height: 40,
  child: MaterialButton(
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
    textColor: Colors.white,
    onPressed: (){
      controller.next();
    }, 
     color: AppColor.primaryColor, 
    child: const Text ("Continue",),
  ),
 
); 
  }
}