// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/forgetpassword/forgotcontroller.dart';
import 'package:sneakers/controller/authentication/signupcontroller.dart';
import 'package:sneakers/controller/forgetpassword/verifycontroller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/core/constant/imageasset.dart';
import 'package:sneakers/view/widget/authentication/custombuttonauth.dart';
import 'package:sneakers/view/widget/authentication/customtextbody.dart';
import 'package:sneakers/view/widget/authentication/customtexttitle.dart';
import 'package:sneakers/view/widget/authentication/logoauth.dart';
import 'package:sneakers/view/widget/authentication/textsingup.dart';
import 'package:sneakers/view/widget/authentication/wallpaper.dart';

import '../../../widget/authentication/customtextform.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(' ',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 88, 161),
                  fontFamily: 'Anton')),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(
            children: [
              //    CustomTextTitleAuth (
              //    text : "Login"
              //  ),
              SizedBox(
                height: 20,
              ),
              CustomTextBodyAuth(text: "Enter The Code That Was Sent To Your Email"),
              SizedBox(
                height: 25,
              ),
       
               OtpTextField(
              
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                     controller.goToResetPassword(verificationCode) ; 
                }, // end onSubmit
              ), 
             /* Text(
                "Forgot Password",
                textAlign: TextAlign.end,
              ),
*/
            
              SizedBox(height: 10),

          /*  Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text("Already Have An Account?"),
              InkWell(
                onTap: (){
                  controller.goToSignIn();
                },
                
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]
              ),
            */
            ],
          ),
        ));
  }
}
