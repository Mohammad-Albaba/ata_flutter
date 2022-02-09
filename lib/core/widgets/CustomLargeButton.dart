import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';

class CustomLargeButton extends StatelessWidget {
  final String text;

  final Function onClick;

  final bool isColor;

  final IconData icons;

  CustomLargeButton({
    @required this.text,
    @required this.onClick,
    this.icons,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Material(
        elevation: 10,
        color: AppColors.Primary_Style,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: InkWell(
          onTap: onClick,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                color: AppColors.Primary_Style,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.Black,
                ),
              ),
            ),
          ),
        ),
        shadowColor: AppColors.Primary_Style,
      ),
    );
  }
}
