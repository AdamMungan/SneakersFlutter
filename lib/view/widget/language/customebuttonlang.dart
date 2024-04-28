import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sneakers/core/constant/color.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String  textbutton ;
  final void Function () ? onPressed; 
  const CustomButtonLanguage({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      width: double.infinity,child:
                       MaterialButton(
                         onPressed:onPressed,
                       textColor: Colors.white,
                    color: AppColor.primaryColor,

                    child:  Text (textbutton  , style  : const TextStyle (fontWeight: FontWeight.bold)),
                    ),
                    );
  }
}