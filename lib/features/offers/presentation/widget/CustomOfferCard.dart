import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/core/widgets/CustomSmallBottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomOfferCard extends StatelessWidget {
  final String name;
  final String oldPrice;
  final String newPrice;
  final String image;
  final String rate;
  //final String time;
  final Function onTap;

  const CustomOfferCard(
      {Key key,
      this.name,
      this.oldPrice,
      this.newPrice,
      this.image,
      this.rate,
      //this.time,
      this.onTap})
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
//              margin: EdgeInsets.all(5.0.sp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Container(
//                      width: 50.0.sp,
                      height: 25.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    elevation: 8,
                    shadowColor: AppColors.Primary_Style,
//                    margin: EdgeInsets.all(8.0.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text(
                                name,
                                style: AppStyles.titleText.copyWith(
                                  fontSize: 15.0.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                newPrice,
                                style: AppStyles.subTitleText.copyWith(
                                  fontSize: 13.0.sp,
                                  color: AppColors.Primary_Style,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text(
                                    oldPrice,
                                    style: AppStyles.subTitleText.copyWith(
                                      fontSize: 12.0.sp,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    rate,
                                    style: AppStyles.subTitleText.copyWith(
                                      fontSize: 13.0.sp,
                                      color: AppColors.Primary_Style,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 2.0.h,
                            ),
                            // CustomSmallButton(
                            //   text: time,
                            //   onClick: () {
                            //     print("onClick");
                            //   },
                            // ),
                            SizedBox(
                              height: 1.0.h,
                            ),
                            CustomSmallButton(
                              text: "reserve".tr(),
                              buttonSize: true,
                              onClick: () {
                                print("onClick");
                              },
                            )
                          ],
                        ),
                      ],
                    ),
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
