import 'package:streakainable/constants/utils/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const titleStyle = TextStyle(
      fontSize: 40, color: AppColors.primaryText, fontWeight: FontWeight.w700);
  static const subtitleStyle = TextStyle(
      fontSize: 20,
      color: AppColors.secondaryText,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic);
  static const semiHeader = TextStyle(
      fontSize: 30, color: AppColors.primaryText, fontWeight: FontWeight.w600);
  static const subHeading = TextStyle(
      fontSize: 25, color: AppColors.primaryText, fontWeight: FontWeight.w500);
}
