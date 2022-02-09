import 'dart:async';

import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/core/widgets/CustomLargeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const ProfilePage({Key key, this.name, this.email, this.phone})
      : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();

  bool isExpand = false;

  @override
  void initState() {
    nameController.text = widget.name == null ? "سارة محمد" : widget.name;
    emailController.text =
        widget.email == null ? "sara@gmail.com" : widget.email;
    phoneController.text = widget.phone == null ? "052236841" : widget.phone;
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
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(6.0.h),
        child: AppBar(
          title: Text(
            " ",
          ),
          backgroundColor: AppColors.UI_White,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.Black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        height: 100.0.h,
        child: SingleChildScrollView(
          child: buildPage(),
        ),
      ),
    );
  }

  Widget buildPage() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 7.0.w,
            right: 7.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.0.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    _showDialog(
                      context: context,
                      child: editProfileDialog(
//                        nameController: nameController,
//                        emailController: emailController,
//                        phoneController: phoneController,
                          ),
                    );
                  },
                  child: Container(
                    height: 3.0.h,
                    width: 6.0.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(AppAssets.pen),
                      ),
                    ),
                  ),
                ),
              ),
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
                    border: Border.all(color: AppColors.Black),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(AppAssets.Avatar),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.0.h,
              ),
              SizedBox(
                child: Text(
                  nameController.text,
                  style: AppStyles.titleText,
                ),
              ),
              SizedBox(
                height: 1.0.h,
              ),
              SizedBox(
                child: Text(
                  emailController.text,
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
                        image: AssetImage(AppAssets.location),
                      ),
                    ),
                  ),
                  /*Icon(
                    Icons.location_on_outlined,
                    color: AppColors.Gray,
                    size: 18.0.sp,
                  )*/
                  SizedBox(
                    width: 3.0.w,
                  ),
                  SizedBox(
                    child: Text(
                      "مدينة الرياض",
                      style: AppStyles.subTitleText,
                    ),
                  ),
                ],
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
                        image: AssetImage(AppAssets.phone2),
                      ),
                    ),
                  ),
                  /*Icon(
                    Icons.phone_in_talk_outlined,
                    color: AppColors.Gray,
                    size: 18.0.sp,
                  ),*/
                  SizedBox(
                    width: 3.0.w,
                  ),
                  SizedBox(
                    child: Text(
                      phoneController.text,
                      style: AppStyles.subTitleText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.0.h,
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.Gray,
          indent: 0.0,
          endIndent: 5.0,
          thickness: 0.8,
        ),
        SizedBox(
          height: 9.0.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    child: Text(
                      "4,500 " + "SAR",
                      textAlign: TextAlign.right,
                      style: AppStyles.titleText,
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "wallet".tr(),
                      style: AppStyles.subTitleText,
                    ),
                  ),
                ],
              ),
              VerticalDivider(
                thickness: 1,
                color: AppColors.Gray,
              ),
              Column(
                children: [
                  SizedBox(
                    child: Text(
                      "12",
                      style: AppStyles.titleText,
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "order".tr(),
                      style: AppStyles.subTitleText,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.Gray,
          indent: 0.0,
          endIndent: 5.0,
          thickness: 0.8,
        ),
        buildAnimatedContainer(),
      ],
    );
  }

  List<Widget> _getChildren(int count, String name) => List<Widget>.generate(
        count,
        (i) => ListTile(title: Text('$name$i')),
      );

  buildAnimatedContainer() {
    return AnimatedContainer(
      duration: new Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: Container(
        child: Column(
          children: [
            ExpansionTile(
              leading: Container(
                height: 4.0.h,
                width: 6.0.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppAssets.fav),
                  ),
                ),
              ),
              /*Icon(
                Icons.favorite_border_rounded,
                color: AppColors.Primary_Style,
              ),*/
              title: Text(
                'favorite'.tr(),
                style: AppStyles.titleText,
              ),
              iconColor: AppColors.Primary_Style,
              children: _getChildren(4, 'favorite'),
            ),
            ExpansionTile(
              leading: Container(
                height: 4.0.h,
                width: 6.0.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppAssets.wallet),
                  ),
                ),
              ),
              /*Icon(
                Icons.credit_card_rounded,
                color: AppColors.Primary_Style,
              ),*/
              title: Text(
                'payment type'.tr(),
                style: AppStyles.titleText,
              ),
              iconColor: AppColors.Primary_Style,
              children: _getChildren(3, 'payment type'),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog({BuildContext context, Widget child}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => child);
  }

  editProfileDialog() {
    return SingleChildScrollView(
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        title: Center(
            child: Text(
          'edit profile'.tr(),
          style: AppStyles.titleText,
        )),
        content: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'fullName'.tr(),
                style: AppStyles.subTitleText.copyWith(
                  color: AppColors.Primary_Style,
                ),
              ),
              SizedBox(
                height: 1.0.h,
              ),
              TextField(
                cursorColor: AppColors.Primary_Style,
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: new BorderSide(
                      color: AppColors.Gray,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: new BorderSide(
                      color: AppColors.Black,
                    ),
                  ),
                  fillColor: AppColors.UI_White,
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 2.0.h,
              ),
              Text(
                'Email'.tr(),
                style: AppStyles.subTitleText.copyWith(
                  color: AppColors.Primary_Style,
                ),
              ),
              SizedBox(
                height: 1.0.h,
              ),
              TextField(
                cursorColor: AppColors.Primary_Style,
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: new BorderSide(color: AppColors.Gray),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: new BorderSide(
                      color: AppColors.Black,
                    ),
                  ),
                  fillColor: AppColors.UI_White,
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 2.0.h,
              ),
              Text(
                'phone'.tr(),
                style: AppStyles.subTitleText.copyWith(
                  color: AppColors.Primary_Style,
                ),
              ),
              SizedBox(
                height: 1.0.h,
              ),
              TextField(
                cursorColor: AppColors.Primary_Style,
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: new BorderSide(
                      color: AppColors.Gray,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: new BorderSide(
                      color: AppColors.Black,
                    ),
                  ),
                  fillColor: AppColors.UI_White,
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 5.0.h,
              ),
              CustomLargeButton(
                text: "edit".tr(),
                onClick: () {
                  print("fullName" + nameController.text);
                  print("Email" + emailController.text);
                  print("phone" + phoneController.text);
                  setState(() {});
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
