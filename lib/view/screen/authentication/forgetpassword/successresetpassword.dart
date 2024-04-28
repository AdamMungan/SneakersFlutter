import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/forgetpassword/successresetpasswordcontroller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/view/widget/authentication/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put (SuccessResetPasswordControllerImp());
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('Successful',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 88, 161),
                  fontFamily: 'Anton')),
        ),
      
       body: Container(
        padding: const EdgeInsets.all(15),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
          Center(child: Icon(Icons.check_circle, size: 200,color: AppColor.primaryColor,)),

          Text("...."),
            Spacer(),
           Container(
            width: double.infinity,
             child: CustomButtonAuth(
                  text: "Login",
                  onPressed: () {
                     controller.goToPageLogin();
                   // controller.signUp();
                  },
                ),
               
           ),
            SizedBox(height: 30,)
  ],
),

       ),
    );
  }
}