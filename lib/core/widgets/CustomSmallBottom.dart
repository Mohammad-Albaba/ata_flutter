import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSmallButton extends StatelessWidget {
  final String text;

  final Function onClick;

  final Color textColor;

  final Color buttonColor;

  final bool buttonSize;

  CustomSmallButton({
    @required this.text,
    @required this.onClick,
    this.textColor,
    this.buttonColor,
    this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: buttonSize == null ? AppColors.Black : AppColors.Primary_Style,
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: InkWell(
        onTap: onClick,
        child: Container(
          width: 20.0.w,
          height: buttonSize == null ? 4.0.h : 6.0.h,
          margin: EdgeInsets.only(left: 2, right: 3),
          decoration: BoxDecoration(
              color: buttonSize == null
                  ? AppColors.Black
                  : AppColors.Primary_Style,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Center(
            child: buttonSize == null
                ? Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: AppColors.UI_White,
                        size: 15,
                      ),
                      SizedBox(
                        width: 1.0.w,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.UI_White,
                        ),
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.UI_White,
                    ),
                  ),
          ),
        ),
      ),
      shadowColor: AppColors.Primary_Style,
    );
  }
}
