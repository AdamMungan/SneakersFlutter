// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextformauth extends StatelessWidget {
  final String hintText;
  final String labeltext;
  final bool? obscureText;
  final IconData iconData; 
  final void Function()? onTapIcon;
  final String? Function (String?) valid ;
    final TextEditingController mycontroller;

  const CustomTextformauth({super.key, required this.hintText,this.onTapIcon,this.obscureText ,required this.labeltext, required this.iconData, required this.mycontroller, required this.valid});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
      
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true ,
                  decoration: InputDecoration(
                    
                    hintText: hintText,
                    hintStyle: const TextStyle( fontSize: 14),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      label: Text(labeltext),
                      suffixIcon: InkWell(child: Icon(iconData), onTap:onTapIcon ,),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9)
                        
                      ),),
                ),
    );
  }
}