import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/core/widgets/CustomLargeButton.dart';
import 'package:beauty_app/core/widgets/CustomSmallBottom.dart';
import 'package:beauty_app/features/home/presentation/pages/HomePage.dart';
import 'package:beauty_app/features/user/presentation/pages/SignUp.dart';
import 'package:beauty_app/features/user/presentation/widget/DialogSelectImage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class Verification extends StatefulWidget {
  final String phone;

  const Verification({Key key, this.phone}) : super(key: key);
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  final TextEditingController _pinPutController = TextEditingController();

  final FocusNode _pinPutFocusNode = FocusNode();

  bool verify = false;
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: AppColors.UI_White,
    borderRadius: BorderRadius.circular(5.0.sp),
    border: Border.all(
      color: AppColors.Black,
    ),
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.UI_White,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5.0.h),
        child: Container(
          height: 100.0.h,
          child: SingleChildScrollView(
            child: buildPage(),
          ),
        ),
      ),
    );
  }

  Widget buildPage() {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.0.w,
        right: 2.0.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.Black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: 2.0.w,
              ),
              SizedBox(
                child: Text(
                  "Verification Account".tr(),
                  style: AppStyles.titleText.copyWith(
                    fontSize: 18.0.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0.h,
          ),
          _buildCircleAvatar(),
          SizedBox(
            height: 3.0.h,
          ),
          SizedBox(
            child: Text(
              "SMS verification".tr(),
              style: AppStyles.subTitleText,
            ),
          ),
          SizedBox(
            child: Text(
              widget.phone,
              style: AppStyles.subTitleText.copyWith(
                color: AppColors.Primary_Style,
              ),
            ),
          ),
          SizedBox(
            height: 5.0.h,
          ),
          buildOTP(),
          SizedBox(
            height: 5.0.h,
          ),
          CustomLargeButton(
            text: "Verification Code".tr(),
            onClick: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
          SizedBox(
            height: 2.0.h,
          ),
          Center(
            child: Text(
              "resend code".tr(),
              style: AppStyles.activeText.copyWith(
                fontSize: 15.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 4.0.h,
          ),
        ],
      ),
    );
  }

  _buildCircleAvatar() {
    return Center(
      child: Container(
        height: 20.0.h,
        width: 35.0.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(AppAssets.Steps),
          ),
        ),
      ),
    );
  }

  buildOTP() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 1.5.h),
      child: PinPut(
        fieldsCount: 4,
        textStyle: AppStyles.normalText.copyWith(
          fontSize: 25.0,
          color: AppColors.Primary_Style,
        ),
        eachFieldWidth: 55.0,
        eachFieldHeight: 60.0,
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: pinPutDecoration,
        selectedFieldDecoration: pinPutDecoration,
        followingFieldDecoration: pinPutDecoration,
        pinAnimationType: PinAnimationType.rotation,
        keyboardType: TextInputType.number,
        withCursor: true,
        autofocus: true,
      ),
    );
  }
}
