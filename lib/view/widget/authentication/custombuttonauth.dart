import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sneakers/core/constant/color.dart';

class CustomButtonAuth  extends StatelessWidget {
  final String text;
  final void Function()? onPressed; 
  const CustomButtonAuth ({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30,right: 30),
      child: MaterialButton
       (
        
        padding: EdgeInsets.symmetric(vertical: 13),
      onPressed: onPressed, 
      color: AppColor.primaryColor,
       textColor: Colors.white,
       child: Text(text), ),
    )
     ;
  }
}