import 'dart:async';
import 'dart:io';

import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/core/widgets/CustomLargeButton.dart';
import 'package:beauty_app/core/widgets/CustomSmallBottom.dart';
import 'package:beauty_app/core/widgets/NavigationDrawer.dart';
import 'package:beauty_app/features/home/presentation/widget/IconModel.dart';
import 'package:beauty_app/features/salons/sa.dart';
import '../../data/CardModel.dart';
import 'package:beauty_app/features/home/presentation/widget/CustomCard.dart';
import 'package:beauty_app/features/offers/presentation/pages/OffersPage.dart';
import 'package:beauty_app/features/user/presentation/widget/DialogSelectImage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    AppAssets.Makeup1,
    AppAssets.Makeup2,
    AppAssets.Makeup1,
    AppAssets.Makeup2,
    AppAssets.Makeup1,
    AppAssets.Makeup2,
  ];
  List<CardModel> list = [];
  List<IconModel> iconList = [];
  int selectedPageIndex = 0;

  final _currentPageNotifier = ValueNotifier(0);
  PageController _pageController;

  int autoPlayInterval = 3000;
  void _autoPlayTimerStart() {
    Timer.periodic(
      Duration(milliseconds: autoPlayInterval),
      (timer) {
        if (true) {
          _currentPageNotifier.value = _currentPageNotifier.value + 1;
        }
      },
    );
  }

  @override
  void initState() {
    _currentPageNotifier.value = 0;
    if (autoPlayInterval != null && autoPlayInterval != 0) {
      _autoPlayTimerStart();
    }
    CardModel cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);
    cardModel = CardModel(
      name: "مركز صالون بيوتي",
      rate: "4.5",
      image: AppAssets.SplashImage,
      location: "145 ",
    );
    list.add(cardModel);

    IconModel iconModel = IconModel(
      name: "trim".tr(),
      image: AppAssets.trim,
    );
    iconList.add(iconModel);

    iconModel = IconModel(
      name: "makeup".tr(),
      image: AppAssets.makeup,
    );
    iconList.add(iconModel);

    iconModel = IconModel(
      name: "skin".tr(),
      image: AppAssets.skin,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "nails".tr(),
      image: AppAssets.nails,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "sewing".tr(),
      image: AppAssets.sewing,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "bride".tr(),
      image: AppAssets.bride,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "Hair removal".tr(),
      image: AppAssets.hairRemoval,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "privet".tr(),
      image: AppAssets.privet,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "products".tr(),
      image: AppAssets.products,
    );
    iconList.add(iconModel);
    iconModel = IconModel(
      name: "spa".tr(),
      image: AppAssets.spa,
    );
    iconList.add(iconModel);
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.UI_White,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(6.0.h),
          child: AppBar(
            title: Text(
              " ",
            ),
            backgroundColor: AppColors.UI_White,
            elevation: 0.0,
            leading: InkWell(
              onTap: () {
                _scaffoldKey.currentState.openDrawer();
              },
              child: Container(
                height: 1.0.h,
                width: 2.0.w,
                margin: EdgeInsets.all(5.0.sp),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(AppAssets.point),
                  ),
                ),
              ),
            ),
          ),
        ),
        drawer: NavigationDrawer(),
        bottomNavigationBar: Container(
          height: 15.0.w,
          color: AppColors.transparent,
          margin: EdgeInsets.only(
            bottom: 1.0.h,
          ),
          child: buildNavigationBar(),
        ),
        body: Container(
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
          SizedBox(
            height: 3.0.h,
          ),
          SizedBox(
//            height: 5.0.h,
            child: Text(
              "welcome".tr() + "جميلة",
              style: AppStyles.titleText,
            ),
          ),
          SizedBox(
            height: 4.0.h,
            child: Text(
              "beauty and care".tr(),
              style: AppStyles.subTitleText,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ValueListenableBuilder<int>(
                valueListenable: _currentPageNotifier,
                builder: (context, value, child) {
                  return Indicator(
                    count: imageList.length,
                    currentIndex: value % imageList.length,
                    activeColor: AppColors.Primary_Style,
                    backgroundColor: AppColors.Primary_Style.withOpacity(0.5),
                  );
                },
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OffersPage(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: Text(
                        "all offers".tr(),
                        style: AppStyles.subTitleText.copyWith(
                          fontSize: 12.0.sp,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.Gray,
                      size: 15.0.sp,
                    )
                  ],
                ),
              ),
            ],
          ),
          buildSlider(),
          SizedBox(
            height: 1.5.w,
          ),
          buildIconsRow(),
          SizedBox(
            height: 6.5.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  "Top Rated Salons".tr(),
                  style: AppStyles.titleText.copyWith(
                    fontSize: 14.0.sp,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: Text(
                      "more".tr(),
                      style: AppStyles.subTitleText.copyWith(
                        fontSize: 12.0.sp,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.Gray,
                    size: 15.0.sp,
                  )
                ],
              ),
            ],
          ),
          _buildList(),
        ],
      ),
    );
  }

  buildSlider() {
    return Container(
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        carouselController: _pageController,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 22.0.h,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageList[i],
                  width: 75.0.w,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            onTap: () {
              var url = imageList[i];
              print(url.toString());
            },
          );
        },
      ),
    );
  }

  buildIconsRow() {
    return SizedBox(
      height: 15.0.h,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemExtent: 23.0.w,
        scrollDirection: Axis.horizontal,
        itemCount: iconList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 8.0.h,
                width: 18.0.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.Gray.withOpacity(0.3),
                  image: DecorationImage(
                    fit: BoxFit.none,
                    image: AssetImage(iconList[index].image),
                  ),
                ),
              ),
              SizedBox(
                height: 1.0.h,
              ),
              SizedBox(
                child: Text(
                  iconList[index].name,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildNavigationBar() {
    return CustomNavigationBar(
      iconSize: 25.0,
      elevation: 8,
      selectedColor: AppColors.Primary_Style,
      strokeColor: AppColors.Primary_Style,
      backgroundColor: AppColors.UI_White,
      borderRadius: Radius.circular(20.0),
      items: [
        CustomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: selectedPageIndex == 0
                ? AppColors.Primary_Style
                : AppColors.Gray,
          ),
          title: Text(
            'homeP'.tr(),
            style: AppStyles.subTitleText.copyWith(
              color: selectedPageIndex == 0
                  ? AppColors.Primary_Style
                  : AppColors.Gray,
              fontSize: 12.0.sp,
            ),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(
            Icons.access_time_filled,
            color: selectedPageIndex == 1
                ? AppColors.Primary_Style
                : AppColors.Gray,
          ),
          title: Text(
            'my reserve'.tr(),
            style: AppStyles.subTitleText.copyWith(
              color: selectedPageIndex == 1
                  ? AppColors.Primary_Style
                  : AppColors.Gray,
              fontSize: 12.0.sp,
            ),
          ),
        ),
        CustomNavigationBarItem(
          icon: InkWell(
            child: Icon(
              Icons.grid_view_rounded,
              color: selectedPageIndex == 2
                  ? AppColors.Primary_Style
                  : AppColors.Gray,

            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Saloans()),
              );
            },
          ),
          
          title: Text(
            'Salons'.tr(),
            style: AppStyles.subTitleText.copyWith(
              color: selectedPageIndex == 2
                  ? AppColors.Primary_Style
                  : AppColors.Gray,
              fontSize: 12.0.sp,
            ),
          ),
        ),
      ],
      currentIndex: selectedPageIndex,
      onTap: (index) {
        setState(() {
          selectedPageIndex = index;
        });
      },
      isFloating: true,
    );
  }

  Future<bool> _onWillPop() {
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
  }

  _buildList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomCard(
              name: list[index].name,
              image: list[index].image ?? ' ',
              location: list[index].location,
              rate: list[index].rate,
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
