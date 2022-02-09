import 'dart:async';
import 'dart:io';

import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/features/user/presentation/pages/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
//  HomePageCubit cubit = HomePageCubit()..getPrice();

//  GetVersionModel getVersionModel = GetVersionModel();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 5), () {
      navigateUser(); //It will redirect  after 5 seconds
    });
  }

  void navigateUser() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignUp()));

//    if (AppSharedPreferences.accessToken != null) {
//      Navigator.pushReplacement(
//          context, MaterialPageRoute(builder: (context) => HomePage()));
//    } else {
//      Navigator.pushReplacement(
//          context, MaterialPageRoute(builder: (context) => Login()));
//    }
  }

  @override
  Widget build(BuildContext context) {
    /*     change color status bar    */
    //Now we use SystemChrome
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    ModalRoute.withName('/');
    return Scaffold(
      backgroundColor: AppColors.UI_White,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.2.h,
            ),
            Hero(
              tag: "splash",
              child: Container(
                width: double.infinity,
                height: 60.0.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.SplashImg),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: const LinearProgressIndicator(
                backgroundColor: AppColors.UI_White,
                minHeight: 5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.Primary_Style,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
