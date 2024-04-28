import 'package:flutter/material.dart';
import 'package:sneakers/core/constant/color.dart';

class FontManager {
  static TextStyle get boldStyle {
    return TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor,
    );
  }

  static TextStyle get semiBoldStyle {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor,
    );
  }

  static TextStyle get mediumStyle {
    return TextStyle(
      fontSize: 16,
      color: AppColor.primaryColor,
    );
  }
}