import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/onboarding_controller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/data/datasource/static/static.dart';
import 'package:sneakers/view/widget/onboarding/custombutton.dart';
import 'package:sneakers/view/widget/onboarding/customslider.dart';
import 'package:sneakers/view/widget/onboarding/dotcontroller.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding ({Key? key}) : super (key: key);

  @override

  Widget build(BuildContext context) {
      Get.put(OnBoardingControllerImp());
    return Scaffold(    
      backgroundColor: Color(0xfff8f9fe),
  body: SafeArea(child: 
  Column(children: [
    const Expanded(
    flex: 4,
    child: 
CustomSliderOnBoarding()
  ),
  Expanded(
    flex: 1,
    child: Column(children: const [

 CustomDotControllerOnBoarding(),

Spacer(flex: 2,),

 CustomButtonOnBoarding(),

  ],))
  ]
  ,)
      )
    );
  } 
}