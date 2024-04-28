import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sneakers/core/constant/colormanager.dart';

class AppbarWidget extends StatelessWidget {
   const AppbarWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('Sneakerz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 88, 161),
                  fontFamily: 'Anton'),
                  ),
       
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 23,
                backgroundColor:Color.fromARGB(255, 9, 88, 161),
                child: Image.asset('assets/images/user.png',
                color: Colors.white,
                width: 40,
                height: 40,),
              ),
            )
          ],
        ),
          ],
        );
      
    
  }
}