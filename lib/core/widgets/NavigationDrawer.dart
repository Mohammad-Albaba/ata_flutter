import 'dart:io';

import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/features/common_question.dart';
import 'package:beauty_app/features/drawer/domain/cubit/drawer_cubit.dart';
import 'package:beauty_app/features/home/presentation/pages/HomePage.dart';
import 'package:beauty_app/features/profile/presentation/pages/ProfilePage.dart';
import 'package:beauty_app/features/support_screen/support_screen.dart';
import 'package:beauty_app/features/user/presentation/pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

import 'dart:async';

class NavigationDrawer extends StatelessWidget {
  Future<bool> _onWillPop(BuildContext context) {
    if (DrawerCubit.homePage) {
      return showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            // if (DrawerCubit.homePage) {
            //   print("true" + DrawerCubit.homePage.toString());
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              title: Text('Are you sure?'.tr()),
              content: Text('Do you want to exit an App'.tr()),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(
                    'no'.tr(),
                    style: TextStyle(color: AppColors.Primary_Style),
                  ),
                ),
                FlatButton(
                  onPressed: () => exit(0),
                  /*Navigator.of(context).pop(true)*/
                  child: Text(
                    "yes".tr(),
                    style: TextStyle(color: AppColors.Red),
                  ),
                ),
              ],
            );
          });
    } else {
      DrawerCubit.homePage = true;
      print("false" + DrawerCubit.homePage.toString());
      context.read<DrawerCubit>().togglePage(MyPage(
            page: HomePage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: 7.0.h, bottom: 3.0.h),
        child: Container(
          height: 50.0.h,
          child: buildPage(context),
        ),
      ),
    );
  }

  Widget createDrawerHeader() {
    return Padding(
      padding: EdgeInsets.only(
        right: 2.0.w,
        top: 5.0.h,
        left: 35.0.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 13.0.h,
            width: 23.0.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.Primary_Style.withOpacity(0.5),
            ),
            child: Container(
              height: 13.0.h,
              width: 23.0.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(AppAssets.Avatar),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Text(
              "سارة محمد",
              style: AppStyles.titleText,
            ),
          ),
          SizedBox(
            child: Text(
              "sara@gmail.com",
              style: AppStyles.subTitleText,
            ),
          ),
          Row(
            children: [
              Container(
                height: 2.0.h,
                width: 3.0.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppAssets.phone),
                  ),
                ),
              ),
              /*Icon(

                //Icons.phone_in_talk_outlined,
                color: AppColors.Primary_Style,
                size: 18.0.sp,
              ),*/
              SizedBox(
                width: 1.0.w,
              ),
              SizedBox(
                child: Text(
                  "052236841",
                  style: AppStyles.subTitleText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget createDrawerBodyItem({
    IconData icon,
    String image,
    String text,
    GestureTapCallback onTap,
  }) {
    return ListTile(
      title: Row(
        children: <Widget>[
          icon != null
              ? Icon(
                  icon,
                  color: AppColors.Primary_Style,
                )
              : Container(
                  height: 4.0.h,
                  width: 6.0.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(image),
                    ),
                  ),
                ),
          SizedBox(
            width: 5.0.w,
          ),
          Text(
            text,
            style: AppStyles.titleText.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14.0.sp,
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  buildPage(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          createDrawerHeader(),
          Divider(
            color: AppColors.Gray,
            indent: 0.0,
            endIndent: 8.0,
            thickness: 0.5,
          ),
          createDrawerBodyItem(
              image: AppAssets.profile,
              text: "profile".tr(),
              onTap: () {
                Navigator.of(context).pop(false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              }),
          createDrawerBodyItem(
//            icon: Icons.favorite_border_rounded,
            image: AppAssets.fav,
            text: 'favorite'.tr(),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
          ),
          createDrawerBodyItem(
              image: AppAssets.wallet,
              //icon: Icons.credit_card_rounded,
              text: 'wallet'.tr(),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }),
          createDrawerBodyItem(
            image: AppAssets.freq_qes,
            //icon: Icons.chat_bubble_outline_rounded,
            text: 'common questions'.tr(),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CommonQuestion(),
              ),
            ),
          ),
          createDrawerBodyItem(
//            icon: Icons.settings,
            image: AppAssets.setting,
            text: 'settings'.tr(),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
          ),
          createDrawerBodyItem(
//            icon: Icons.support_rounded,
            image: AppAssets.support,
            text: 'technical support'.tr(),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SupportScreen(),
              ),
            ),
          ),
          SizedBox(
            height: 8.0.h,
          ),
          createDrawerBodyItem(
            image: AppAssets.logout,
            //icon: Icons.logout,
            text: 'logout'.tr(),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
