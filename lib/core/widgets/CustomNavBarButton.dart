import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:beauty_app/core/constants/AppColors.dart';

class CustomNavBarButton extends StatelessWidget {
  final String textButton;
  final bool isCard;

  const CustomNavBarButton({Key key, this.textButton, this.isCard})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0.w,
      height: 7.0.h,
      decoration: BoxDecoration(
        color: isCard == null
            ? AppColors.Primary_Style
            : AppColors.Secondary_Style,
        shape: BoxShape.rectangle,
        borderRadius: isCard == null
            ? BorderRadius.all(Radius.circular(20.0))
            : BorderRadius.only(
                topRight: Radius.circular(45.0.sp),
                topLeft: Radius.circular(45.0.sp),
                bottomRight: Radius.circular(20.0.sp),
                bottomLeft: Radius.circular(20.0.sp),
              ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
      child: Center(
        child: Text(
          textButton,
          style: TextStyle(
            color: AppColors.UI_White,
            fontFamily: 'MarkaziText-Regular',
            fontSize: 18.0.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
