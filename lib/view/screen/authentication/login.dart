// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/authentication/logincontroller.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/core/constant/imageasset.dart';
import 'package:sneakers/core/functions/validinput.dart';
import 'package:sneakers/view/screen/home.dart';

import 'package:sneakers/view/widget/authentication/custombuttonauth.dart';
import 'package:sneakers/view/widget/authentication/customtextbody.dart';
import 'package:sneakers/view/widget/authentication/customtexttitle.dart';
import 'package:sneakers/view/widget/authentication/logoauth.dart';
import 'package:sneakers/view/widget/authentication/textsingup.dart';
import 'package:sneakers/view/widget/authentication/wallpaper.dart';


import '../../widget/authentication/customtextform.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
Get.put(LoginControllerImp());

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
        body: 
       GetBuilder<LoginControllerImp>(builder: (controller) => 
          
          controller.statusRequest == StatusRequest.loading ?
          Center( child:  Text("Loading ... "),) :
        Container(
          
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                
                LogoAuth(),
                //    CustomTextTitleAuth (
                //    text : "Login"
                //  ),
                SizedBox(
                  height: 80,
                ),
                CustomTextBodyAuth(text: "Enter Your Email and Password"),
                SizedBox(
                  height: 25,
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
               GetBuilder<LoginControllerImp>
               (builder: (controller)=>  CustomTextformauth(
                  obscureText: controller.isshowPassword ,
                  onTapIcon: (){
                    controller.showPassword();

                  },
                    valid: (val){
                     return validInput(val!, 5, 30, "password");
                  },
                  mycontroller: controller.password,
                  hintText: "Enter Your Password",
                  iconData: Icons.lock,
                  labeltext: "Passowrd",
                  // mycontroller: ,
                ), ),
                InkWell(
                  onTap: ()
                  {
                    controller.goToForgetPassword();
          
                  },
                  child: Text(
                    "Forgot Password",
                    textAlign: TextAlign.end,
                  ),
                ),
          
                CustomButtonAuth(
                  text: "Sign In",
                  onPressed: () {
                       controller.login();
                  },
                ),
                SizedBox(height: 10),
                CustomTextSignupAndSignin(text: "Don't Have an Account?  ",
                 text2: "   Signup",
                  onTap:(){
                     controller.goToSignUp();
                  }
                  ),
                  SizedBox(height: 10,),
                  CustomTextSignupAndSignin(text: "",
                 text2: "   Enter as Guest",
                  onTap:(){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
  );
                  }
                  )
              ],
            ),
          ),
        ),)
        );
  }
}
