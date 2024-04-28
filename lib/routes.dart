import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/test.dart';
import 'package:sneakers/view/screen/authentication/checkemail.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/forgot.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/successresetpassword.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/verify.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/verifycodesignup.dart';
import 'package:sneakers/view/screen/authentication/login.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/resetpassword.dart';
import 'package:sneakers/view/screen/authentication/signup.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/successresetpassword.dart';
import 'package:sneakers/view/screen/authentication/successsignup.dart';
import 'package:sneakers/view/screen/home.dart';


import 'view/screen/onboarding.dart';
List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const OnBoarding() ,

   ),
  
  GetPage(name: "/", page: () => Test()),

GetPage(name: AppRoute.Login, page: ()=> const Login()) ,
GetPage(name: AppRoute.signUp, page: ()=> const SignUp()) ,
GetPage(name: AppRoute.forgetPassword, page: ()=> const ForgetPassword()) ,
GetPage(name: AppRoute.onBoarding, page: ()=> const OnBoarding()) ,
GetPage(name: AppRoute.verifyCode, page: ()=> const VerifyCode()) ,
GetPage(name: AppRoute.resetPassword, page: ()=> const ResetPassword()) ,
GetPage(name: AppRoute.successResetPassword, page: ()=> const SuccessResetPassword()) ,
GetPage(name: AppRoute.successSignUp, page: ()=> const SuccessSignUp()) ,
GetPage(name: AppRoute.checkemail, page: ()=> const CheckEmail()) ,
GetPage(name: AppRoute.verifyCodeSignUp, page: ()=> const VerifyCodeSignUp()) ,
GetPage(name: AppRoute.homepage, page: ()=> const HomePage()) ,
//GetPage(name: AppRoute.homepage, page: ()=> homepage()) ,

];
