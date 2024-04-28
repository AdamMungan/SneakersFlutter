import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String text ;
  const CustomTextTitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold)
              );
  }
}