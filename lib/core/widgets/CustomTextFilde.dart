import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {

  final String hintText;

  final IconData hintIconData;

  final TextEditingController Controller;

  final Function onChange;

  final TextInputType inputType;

  bool q;

  Function onChangeIcon;

  bool isLarge;

  bool isLoginOrPass;

  CustomTextField(
      {@required this.hintText,
      @required this.Controller,
      @required this.onChange,
      @required this.inputType,
      this.hintIconData,
      this.q,
      this.onChangeIcon,
      this.isLarge,
      this.isLoginOrPass
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: isLarge ? 3 : 1,
      minLines: isLarge ? 3 : 1,
      maxLength: isLoginOrPass ? 10 : null,
      decoration: InputDecoration(
       // fillColor: AppColors.UI_White,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 2.0.h,horizontal: 2.0.w),
        hintText: hintText,
        hintStyle:
        AppStyles.normalText.copyWith(color: AppColors.Black,),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3.0.sp),
          borderSide: BorderSide(
            color: AppColors.UI_White,
            width: 1.0.sp,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            3.0.sp,
          ),
          borderSide: BorderSide(
            color: AppColors.Black,
            width: 1.0.sp,
          ),
        ),
        suffixIcon: (hintIconData == null && q == null)
            ? null
            : IconButton(
                icon: Icon(
                  hintIconData,
                  color: AppColors.Black,
                ),
                onPressed: onChangeIcon,
              ),
      ),
      controller: Controller,
      onChanged: onChange,
      cursorColor: AppColors.UI_White,
      keyboardType: inputType,
      autofocus: false,
    );
  }
}
