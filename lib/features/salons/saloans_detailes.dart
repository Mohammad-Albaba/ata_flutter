import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer_ext.dart';

class SaloansDetailes extends StatefulWidget {

  @override
  State<SaloansDetailes> createState() => _SaloansDetailesState();
}

class _SaloansDetailesState extends State<SaloansDetailes> {
  Color _iconColor = Colors.grey;
  Color _iconColor2 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 150,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
        color: Colors.black,
    ),
    elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 16,
                right: 16,

              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.black12,
                    child: IconButton(
                      icon: Icon(Icons.favorite,color: _iconColor),
                      onPressed: (){
                        setState(() {
                          _iconColor = Colors.red;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.black12,
                    child: IconButton(
                      icon:  Image.asset('assets/icons/maps.png',color: _iconColor2,),
                      onPressed: (){
                        setState(() {
                          _iconColor2 = Colors.red;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/icons/robroy.png',height:120 ,width:120 ,),
              Row(
                children: [
                Text('صالون أماسي'),
                  Spacer(),
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
              ],),
              SizedBox(
                height: 16,
              ),
              Text('لتقديم خدمات مخصصة للنساء من تسريحات وقص للشعر، عمل المكياج، تنظيف البشرة، مساج ….. الخ ) '),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ItemScroll(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0.0,
                  ),
                  itemCount: 10,
                ),
              ),
              Text('خدماتنا لكل جميلة',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('تسريحات الشعر'),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('معالجة الشعر'),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('الأظافر'),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('العناية بالبشرة'),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('المكياج'),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  Widget ItemScroll() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          color: Colors.white,
          child: CircleAvatar(
            radius: 40,
            child: Image.asset('assets/icons/013-razor.png',),
          ),
        ),
        Text("Hair removal".tr()),
      ],
    ),
  );

}

