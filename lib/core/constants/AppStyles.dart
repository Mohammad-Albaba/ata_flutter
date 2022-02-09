//import 'dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beauty_app/core/utils/SharedPreferences/SharedPreferencesHelper.dart';
import '../constants.dart';
import 'AppColors.dart';
import 'package:sizer/sizer.dart';

class AppStyles {
  AppStyles._();
  static String fontFamily =
      AppSharedPreferences.lang == LANG_AR ? 'ARBFONTS' : 'MYRIADPRO';

  static get normalText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.UI_White,
      );
  static get nameText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.Primary_Style,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
      );
  static get titleText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.Black,
        fontSize: 16.0.sp,
        fontWeight: FontWeight.bold,
      );
  static get subTitleText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.Gray,
        fontSize: 14.0.sp,
      );
  static get activeText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.Primary_Style,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
      );
  static get unActiveText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.Gray,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
      );
  static get shapeText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.Secondary_Style,
        fontSize: 14.0.sp,
      );
  static get priceText => TextStyle(
        fontFamily: fontFamily,
        color: AppColors.UI_White,
        fontSize: 14.0.sp,
      );
}
