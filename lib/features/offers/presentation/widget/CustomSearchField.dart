import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomSearchField extends StatefulWidget {
  @override
  _CustomSearchFieldState createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  String barcode = "Search".tr();

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.0.w,
        right: 3.0.w,
      ),
      child: Card(
        elevation: 8,
        shadowColor: AppColors.Gray1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: TextField(
          controller: _controller,
          cursorColor: AppColors.Primary_Style,
          style: TextStyle(fontSize: 15.0, color: AppColors.Black),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.UI_White),
              borderRadius: BorderRadius.circular(25),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.UI_White),
              borderRadius: BorderRadius.circular(25),
            ),
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.Gray,
              size: 20.0.sp,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.clear,
                color: AppColors.Gray,
                size: 15.0.sp,
              ),
              onPressed: () {
                /* Clear the search field */
                _controller.clear();
              },
            ),
            hintText: barcode.toString(),
          ),
        ),
      ),
    );
  }
}
