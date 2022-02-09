import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String rate;
  final String location;
  final String image;
  final Function onTap;

  const CustomCard(
      {Key key, this.name, this.rate, this.location, this.image, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
//          height: 25.0.h,
//            width: 88.0.w,
            child: Card(
              elevation: 5,
              shadowColor: AppColors.Gray,
              margin: EdgeInsets.all(5.0.sp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Container(
                      width: 50.0.sp,
                      height: 50.0.sp,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    elevation: 8,
                    shadowColor: AppColors.Primary_Style,
                    margin: EdgeInsets.all(8.0.sp),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 55.0.w,
                        child: Text(
                          name,
                          style: AppStyles.titleText.copyWith(
                            fontSize: 13.0.sp,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15.0.sp,
                            color: AppColors.Primary_Style,
                          ),
                          SizedBox(
                            child: Text(
                              location + "km".tr(),
                              style: AppStyles.subTitleText.copyWith(
                                fontSize: 10.0.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            child: Text(
                              rate,
                              style: AppStyles.titleText.copyWith(
                                fontSize: 13.0.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1.0.w,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
