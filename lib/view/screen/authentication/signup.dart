// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/authentication/signupcontroller.dart';
import 'package:sneakers/core/class/handlingdataview.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/core/constant/imageasset.dart';
import 'package:sneakers/core/functions/validinput.dart';
import 'package:sneakers/view/widget/authentication/custombuttonauth.dart';
import 'package:sneakers/view/widget/authentication/customtextbody.dart';
import 'package:sneakers/view/widget/authentication/customtexttitle.dart';
import 'package:sneakers/view/widget/authentication/logoauth.dart';
import 'package:sneakers/view/widget/authentication/textsingup.dart';
import 'package:sneakers/view/widget/authentication/wallpaper.dart';

import '../../widget/authentication/customtextform.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('Sneakerz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 88, 161),
                  fontFamily: 'Anton')),
        ),
        body: GetBuilder<SignUpControllerImp>(
          builder: (controller )=>
          HandlingDataView ( statusRequest:   controller.statusRequest!,
           widget :
          Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                //    CustomTextTitleAuth (
                //    text : "Login"
                //  ),
                SizedBox(
                  height: 20,
                ),
                CustomTextBodyAuth(text: "Enter The Neccesary Information"),
                SizedBox(
                  height: 25,
                ),
                CustomTextformauth(
                  valid: (val){
           return validInput(val!, 2, 100, "name");
                  },
                  mycontroller: controller.username,
                  hintText: "Enter Your Username",
                  iconData: Icons.person,
                  labeltext: "Name",
                  //   mycontroller: ,
                ),
                CustomTextformauth(
                    valid: (val){
                     return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: controller.email,
                  hintText: "Enter Your Email",
                  iconData: Icons.email,
                  labeltext: "Email",
                  //   mycontroller: ,
                ),
                CustomTextformauth(
                    valid: (val){
                    return validInput(val!, 5, 100, "phone");
                  },
                  mycontroller: controller.phone,
                  hintText: "Enter Your Phonenumber",
                  iconData: Icons.phone,
                  labeltext: "Phone",
                  // mycontroller: ,
                ),
                CustomTextformauth(
                    valid: (val){
                     return validInput(val!, 5, 100, "password");
                  },
                  mycontroller: controller.password,
                  hintText: "Enter Your Password",
                  iconData: Icons.lock,
                  labeltext: "Password",
                  // mycontroller: ,
                ),
               /* Text(
                  "Forgot Password",
                  textAlign: TextAlign.end,
                ),
          */
                CustomButtonAuth(
                  text: "Sign Up",
                  onPressed: () {
                    controller.signUp();
                  },
                ),
                SizedBox(height: 10),
          
                  CustomTextSignupAndSignin(text: "Already Have An Account?  ",
                 text2: "   Sign In",
                  onTap:(){
                     controller.goToSignIn();
                  }),
          
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
          ),
          )))
        );
  }
}
