
  import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sneakers/core/constant/imageasset.dart';

class wallpaperauth extends StatelessWidget {
  const wallpaperauth ({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(   decoration:  const BoxDecoration(
          image: DecorationImage(
          image: AssetImage(
            'images/wallpaper.png',
            
          ),
          fit: BoxFit.cover,
        ),
        )
        );
  }
}