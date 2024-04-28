import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/routes.dart';
import 'package:sneakers/test.dart';
import 'package:sneakers/view/screen/authentication/forgetpassword/forgot.dart';
import 'package:sneakers/view/screen/authentication/login.dart';
import 'core/constant/color.dart';
import 'package:sneakers/bindings/initialbinding.dart';
import 'core/services/services.dart';

import 'view/screen/onboarding.dart';

void main() 
async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices  () ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter deez',
      theme: ThemeData(
textTheme: const TextTheme( 

  displayLarge:   TextStyle(fontWeight: FontWeight.bold,fontSize:20, color: AppColor.black ),
  displayMedium:   TextStyle(fontWeight: FontWeight.bold,fontSize:26, color: AppColor.black ),
  bodyMedium: TextStyle( height: 2, color: AppColor.grey ,fontWeight: FontWeight.bold  ,fontSize: 17 ),
),
        primarySwatch: Colors.blue,
      ),
      initialBinding:InitialBindings() ,
      getPages: routes,
     // home: OnBoarding(),
      //routes: routes ,
    );
  }
}