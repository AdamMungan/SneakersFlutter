import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/onboarding_controller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key ? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return    
     PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i)=> Column(
        children: [
  Image.asset(onBoardingList[i].image! 
  ,// width: 200,
  // height: 230, 
   fit: BoxFit.fill, ),
  const SizedBox(height: 80,),
  Text(onBoardingList[i].title!,style: 
  Theme.of(context).textTheme.displayLarge,),

  Container(
    width: double.infinity,
    alignment: Alignment.center, 
    child: Text(onBoardingList[i].body!, textAlign:TextAlign.center, 
    style:   Theme.of(context).textTheme.bodyMedium,  ) )
        ],
        )
        );
  }
}