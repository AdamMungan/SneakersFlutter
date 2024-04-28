import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sneakers/core/constant/color.dart';

class CustomTextSignupAndSignin extends StatelessWidget {
  final String text ;
  final String text2 ; 
  final void Function() onTap;
  const CustomTextSignupAndSignin({super.key, required this.text, required this.text2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(text),
              InkWell(
                onTap: onTap,
                child: Text(
                  text2,
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]
              );
  }
}