import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/core/widgets/CustomLargeButton.dart';
import 'package:beauty_app/features/home/presentation/pages/HomePage.dart';
import 'package:beauty_app/features/user/presentation/pages/Login.dart';
import 'package:beauty_app/features/user/presentation/pages/Verification.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Map<String, TextEditingController> controllers = Map();
  File _image;
  final picker = ImagePicker();
  //final TextEditingController _PhoneController = new TextEditingController();f

  //Image picker
  Future getImage(ImageSource type) async {
    final pickedFile = await picker.getImage(source: type);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    controllers.putIfAbsent('fullName'.tr(), () => new TextEditingController());
    controllers.putIfAbsent('Email'.tr(), () => new TextEditingController());
    controllers.putIfAbsent('phone'.tr(), () => new TextEditingController());
    super.initState();
  }

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
    return Column(
      children: [
        SizedBox(
          height: 8.0.h,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: SizedBox(
                  child: Text(
                    "login".tr(),
                    style: AppStyles.unActiveText,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      "sign up".tr(),
                      style: AppStyles.activeText,
                    ),
                  ),
                  Container(
                    height: 1.0.h,
                    width: 6.0.w,
                    decoration: BoxDecoration(
                        color: AppColors.Primary_Style,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2.0.h,
        ),
        _buildCircleAvatar(),
        SizedBox(
          height: 1.0.h,
        ),
        _buildList(),
        SizedBox(
          height: 2.0.h,
        ),
        CustomLargeButton(
          text: "register".tr(),
          onClick: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Verification(
                  phone: controllers['phone'.tr()].text ?? " ",
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 2.0.h,
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Center(
            child: Text(
              "visit".tr(),
              style: AppStyles.activeText.copyWith(
                fontSize: 15.0.sp,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4.0.h,
        ),
        Padding(
          padding: EdgeInsets.all(8.0.sp),
          child: SizedBox(
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "By using the application and logging in.You agree to"
                            .tr() +
                        "\n",
                    style: TextStyle(color: AppColors.Black, fontSize: 16),
                  ),
                  TextSpan(
                      text: "Terms of Service".tr(),
                      style: TextStyle(
                        color: AppColors.Primary_Style,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Terms of Service click");
                        }),
                  TextSpan(
                    text: "and".tr(),
                    style: TextStyle(color: AppColors.Black, fontSize: 16),
                  ),
                  TextSpan(
                      text: "Privacy policy".tr(),
                      style: TextStyle(
                          color: AppColors.Primary_Style, fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy policy click");
                        }),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
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

  _buildList() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 1.5.h),
          child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: controllers.length,
              itemBuilder: (context, i) {
                List listKeys = controllers.keys.toList();
                return Padding(
                  padding: EdgeInsets.only(top: 1.0.h, bottom: 1.0.h),
                  child: Material(
                    elevation: 5.0.sp,
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    shadowColor: AppColors.Primary_Style,
                    child: TextField(
                      controller: controllers[listKeys[i]],
                      keyboardType: listKeys[i] == 'phone'.tr()
                          ? TextInputType.phone
                          : listKeys[i] == 'Email'.tr()
                              ? TextInputType.emailAddress
                              : TextInputType.name,
                      style: AppStyles.shapeText.copyWith(
                        color: AppColors.Black.withOpacity(1),
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: 4.0.w,
                          bottom: 8.0,
                          top: 8.0,
                          right: 4.0.w,
                        ),
                        focusColor: AppColors.UI_White,
                        labelText: listKeys[i],
                        labelStyle: AppStyles.shapeText.copyWith(
                          fontSize: 12.0.sp,
                          color: AppColors.Gray,
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: AppColors.UI_White,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.Black,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.Black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 2.0.h,
        ),
      ],
    );
  }
}
