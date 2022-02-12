import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/features/salons/saloans_detailes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class Saloans extends StatefulWidget {
  @override
  _SaloansState createState() => _SaloansState();
}

class _SaloansState extends State<Saloans> {
  String barcode = "Search".tr();


  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'صالونات جميلة',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.0.w,
              right: 3.0.w,
              bottom: 5.0.w,
            ),
            child: Card(
              elevation: 8,
              shadowColor: AppColors.Gray1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: TextField(
                controller: _controller,
                cursorColor: AppColors.Primary_Style,
                style: TextStyle(fontSize: 15.0, color: AppColors.Black),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.UI_White),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.UI_White),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.Gray,
                    size: 20.0.sp,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.Gray,
                      size: 15.0.sp,
                    ),
                    onPressed: () {
                      /* Clear the search field */
                      _controller.clear();
                    },
                  ),
                  hintText: barcode.toString(),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => itemCard(),
              separatorBuilder: (context, index) => SizedBox(
                height: 0.0,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),

    );
  }

  Widget itemCard() => InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> SaloansDetailes()));
    },
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
                        image: AssetImage('assets/icons/robroy.png'),
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
                        'مركز صالون بيوتي',
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
                            '145 + ${"km".tr()}',
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
                            '4.5',
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
