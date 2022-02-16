import 'package:beauty_app/core/constants/AppColors.dart';
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
  Color _colorTextField1 = AppColors.textField;
  Color _colorTextField2 = AppColors.textField;
  Color _colorTextField3 = AppColors.textField;
  Color _colorTextField4 = AppColors.textField;
  Color _colorTextField5 = AppColors.textField;
  Color _colorTextFieldIcon1 = AppColors.textFieldIcon;
  Color _colorTextFieldIcon2 = AppColors.textFieldIcon;
  Color _colorTextFieldIcon3 = AppColors.textFieldIcon;
  Color _colorTextFieldIcon4 = AppColors.textFieldIcon;
  Color _colorTextFieldIcon5 = AppColors.textFieldIcon;
  Color _colorIcon1 = Colors.white;
  Color _colorIcon2 = Colors.white;
  Color _colorIcon3 = Colors.white;
  Color _colorIcon4 = Colors.white;
  Color _colorIcon5 = Colors.white;
  bool _alreadySaved = false;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 90,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
        color: Colors.black,
    ),
    elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 16),
              child: Column(
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    color: Colors.black12,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        _alreadySaved ? Icons.favorite : Icons.favorite_border,
                        color: _iconColor,
                        size: 18,
                      ),
                      onPressed: (){
                        setState(() {
                          _alreadySaved = true;
                          _iconColor = Colors.red;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 34,
                    width: 34,
                    color: Colors.black12,
                    child: IconButton(
                      icon:  Image.asset('assets/icons/maps.png',color: _iconColor2,),
                      iconSize: 20,
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
          padding: const EdgeInsets.only(right: 16,bottom: 16,left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/icons/robroy.png',height:88 ,width:120 ,),
              Row(
                children: [
                Text('صالون أماسي'),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  SizedBox(width: 9,),
                  SizedBox(
                    child: Text(
                      '4.5',
                      style: AppStyles.titleText.copyWith(
                        fontSize: 12.0.sp,
                        fontWeight : FontWeight.normal,
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
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ItemScroll(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0.0,
                    width: 40,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text('خدماتنا لكل جميلة',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    _colorTextField1 = Colors.white;
                    _colorTextFieldIcon1 = Colors.white;
                    _colorIcon1 = AppColors.textFieldIcon;
                  });
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: _colorTextField1,
                    border: Border.all(color: Colors.grey),
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
                                color: _colorTextFieldIcon1,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                            ),
                            child: Icon(Icons.arrow_drop_down,color: _colorIcon1,)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    isPressed = true;
                    _colorTextField2 = Colors.white;
                    _colorTextFieldIcon2 = Colors.white;
                    _colorIcon2 = AppColors.textFieldIcon;
                  });
                },
                  child: isPressed ?  Column(
                    children: [
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          color: _colorTextField2,
                          border: Border.all(color: Colors.grey),
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
                                    color: _colorTextFieldIcon2,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Icon(Icons.arrow_drop_down,color: _colorIcon2,)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 85,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          children: [
                            Image(
                              height : 70,
                              width: 65,
                              image: AssetImage('assets/icons/c.png'),
                            ),
                            SizedBox(width: 10.0,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'برافين يد',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '99.00   ر.س',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: _colorTextFieldIcon2,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Icon(Icons.add,color: AppColors.textFieldIcon,)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(
              height: 56,
              decoration: BoxDecoration(
                  color: _colorTextField2,
                  border: Border.all(color: Colors.grey),
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
                    color: _colorTextFieldIcon2,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Icon(Icons.arrow_drop_down,color: _colorIcon2,)),
            ],
          ),
        ),
      ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    _colorTextField3 = Colors.white;
                    _colorTextFieldIcon3 = Colors.white;
                    _colorIcon3 = AppColors.textFieldIcon;

                  });
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color:  _colorTextField3,
                    border: Border.all(color: Colors.grey),
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
                              color: _colorTextFieldIcon3,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Icon(Icons.arrow_drop_down,color: _colorIcon3,)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    _colorTextField4 = Colors.white;
                    _colorTextFieldIcon4 = Colors.white;
                    _colorIcon4 = AppColors.textFieldIcon;
                  });
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: _colorTextField4,
                    border: Border.all(color: Colors.grey),
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
                              border: Border.all(color: Colors.grey),
                              color: _colorTextFieldIcon4,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_drop_down,color: _colorIcon4,)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    _colorTextField5 = Colors.white;
                    _colorTextFieldIcon5 = Colors.white;
                    _colorIcon5 = AppColors.textFieldIcon;
                  });
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: _colorTextField5,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16.0,),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text('المكياج'),
                        Spacer(),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: _colorTextFieldIcon5,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_drop_down,color: _colorIcon5,)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  Widget ItemScroll() => Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: Colors.white12,width: 2.5),
          borderRadius: BorderRadius.circular(28),
        ),
        child: CircleAvatar(
          radius: 27,
          child: Image.asset('assets/icons/robroy.png',),
        ),
      ),
      Text("Hair removal".tr()),
    ],
  );

}

