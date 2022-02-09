import 'dart:async';

import 'package:beauty_app/core/constants/AppAssets.dart';
import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/features/offers/data/ItemPopupMenuButton.dart';

import 'package:beauty_app/features/offers/data/OffersModel.dart';
import 'package:beauty_app/features/offers/presentation/widget/CustomOfferCard.dart';
import 'package:beauty_app/features/offers/presentation/widget/CustomSearchField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../home/data/CardModel.dart';
import 'package:beauty_app/features/home/presentation/widget/CustomCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  List<OffersModel> list = [];
  List<ItemPopupMenuButton> choices = [];

  ItemPopupMenuButton _selectedChoice; // The app's "state".

  void _select(ItemPopupMenuButton choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  void initState() {
    OffersModel cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "3 أيام");
    list.add(cardModel);
    cardModel = OffersModel(
        name: "تجهيز مكياج العرائس",
        rate: "",
        image: AppAssets.Makeup1,
        oldPrice: "5000 ر.س ",
        newPrice: "2500 ر.س ",
        time: "ثلاث أيام");
    list.add(cardModel);
    ItemPopupMenuButton item = ItemPopupMenuButton(
      title: 'from top to bottom'.tr(),
      icon: FontAwesomeIcons.sortAmountDown,
    );
    choices.add(item);
    item = ItemPopupMenuButton(
      title: 'from bottom to top'.tr(),
      icon: FontAwesomeIcons.sortAmountDownAlt,
    );
    choices.add(item);
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.0.h),
        child: AppBar(
          title: Text(
            "offers".tr(),
            style: AppStyles.titleText.copyWith(
              fontSize: 16.0.sp,
            ),
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
          actions: <Widget>[
            // overflow menu
            PopupMenuButton<ItemPopupMenuButton>(
                icon: Icon(
                  Icons.filter_alt_outlined,
                  color: AppColors.Black,
                ),
                itemBuilder: (BuildContext context) =>
                    <PopupMenuItem<ItemPopupMenuButton>>[
                      new PopupMenuItem<ItemPopupMenuButton>(
                        value: choices[0],
                        child: new Row(
                          children: [
                            Text(
                              choices[0].title,
                            ),
                            SizedBox(
                              width: 2.0.w,
                            ),
                            Icon(
                              choices[0].icon,
                              color: AppColors.Black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      new PopupMenuItem<ItemPopupMenuButton>(
                        value: choices[1],
                        child: Row(
                          children: [
                            Text(
                              choices[1].title,
                            ),
                            SizedBox(
                              width: 2.0.w,
                            ),
                            Icon(
                              choices[1].icon,
                              color: AppColors.Black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                onSelected: (ItemPopupMenuButton value) {
                  setState(() {
                    _selectedChoice = value;
                  });
                }),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 2.0.h),
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
          CustomSearchField(),
          SizedBox(
            height: 3.0.h,
          ),
          _buildList(),
        ],
      ),
    );
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
            return CustomOfferCard(
              name: list[index].name,
              image: list[index].image ?? ' ',
              oldPrice: list[index].oldPrice,
              newPrice: list[index].newPrice,
              //time: list[index].time,
              rate: list[index].rate,
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
