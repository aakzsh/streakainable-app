import 'package:streakainable/constants/utils/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const titleStyle = TextStyle(
      fontSize: 30, color: AppColors.primaryText, fontWeight: FontWeight.w700);
  static const subtitleStyle = TextStyle(
      fontSize: 15,
      color: AppColors.secondaryText,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic);
  static const semiHeader = TextStyle(
      fontSize: 20, color: AppColors.primaryText, fontWeight: FontWeight.w600);
  static const subHeading = TextStyle(
      fontSize: 25, color: AppColors.primaryText, fontWeight: FontWeight.w500);
  static const streak = TextStyle(fontSize: 60);
  static const username = TextStyle(fontSize: 30, fontWeight: FontWeight.w500);
  static const contentFaded =
      TextStyle(fontSize: 18, color: AppColors.secondaryText);
  static const cardTitle =
      TextStyle(fontSize: 20, color: AppColors.secondaryBackground);
  static const cardSubtitle = TextStyle(
      fontSize: 25,
      color: AppColors.secondaryBackground,
      fontWeight: FontWeight.bold);
  static const homeHeader =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
}
