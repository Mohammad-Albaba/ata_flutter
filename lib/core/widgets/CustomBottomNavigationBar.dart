import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/utils/SharedPreferences/SharedPreferencesHelper.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int pageIndex;
  final Function onTap;

  const CustomBottomNavigationBar({Key key, this.pageIndex, this.onTap})
      : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: widget.pageIndex,
      backgroundColor: AppColors.Secondary_Style,
      color: AppColors.Primary_Style,
      height: 8.0.h,
      items: [
        Icon(
          Icons.search,
          size: 25,
          color: AppColors.UI_White,
        ),
        Stack(
          children: [
            Icon(
              Icons.person,
              size: 25,
              color: AppColors.UI_White,
            ),
          ],
        ),
        Icon(
          Icons.home,
          size: 25,
          color: AppColors.UI_White,
        ),
        Text(
          "1",
          style: TextStyle(
            color: AppColors.UI_White,
            fontSize: 8.0.sp,
          ),
        ),
        Icon(
          FontAwesomeIcons.whatsapp,
          size: 25,
          color: AppColors.UI_White,
        ),
      ],
      onTap: widget.onTap,
      /*onTap: (index) {
        //Handle button tap
        if (index == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SearchPage()));
        } else if (index == 2) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => DrawerPage()));
        }
        //TODO TEST
        if (widget.pageIndex == 2 && AppSharedPreferences.status) {
          setState(() {
            AppSharedPreferences.status = false;
            print("status is    " + AppSharedPreferences.status.toString());
          });
        } else if (widget.pageIndex == 2 && !AppSharedPreferences.status) {
          setState(() {
            AppSharedPreferences.status = true;
            print("status is    " + AppSharedPreferences.status.toString());
          });
        }
      },*/
    );
  }
}
