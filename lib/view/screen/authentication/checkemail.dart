
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/authentication/checkemailcontroller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/view/widget/authentication/custombuttonauth.dart';
import 'package:sneakers/view/widget/authentication/customtextbody.dart';
import 'package:sneakers/view/widget/authentication/customtextform.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('Check Email',
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
              CustomTextBodyAuth(text: "Enter The Neccesary Information"),
              SizedBox(
                height: 25,
              ),

              CustomTextformauth(
                  valid: (val){
                  
                },
                mycontroller: controller.email,
                hintText: "Enter Your Email",
                iconData: Icons.email,
                labeltext: "Email",
                //   mycontroller: ,
              ),
              /* Text(
                "Forgot Password",
                textAlign: TextAlign.end,
              ),
*/
              CustomButtonAuth(
                text: "Check",
                onPressed: () {
                  controller.goToVerfiyCode();
                },
              ),
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
