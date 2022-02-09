import 'package:beauty_app/components/components.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
 TextEditingController connectController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'الدعم الفني',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/icons/bg.png')),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      controller: connectController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                        labelText: 'الاسم',
                        hintText: 'الاسم',
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                        ),
                        border: OutlineInputBorder(
                           gapPadding: 8,
                          borderRadius: BorderRadius.circular(30),
                        ),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      controller: connectController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                        labelText: 'البريد الالكتروني',
                        hintText: 'البريد الالكتروني',
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),

                      ),
                    ),
                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: TextFormField(
                    decoration: InputDecoration(
                      hintText: ' شاركنا مشكلتك لحلها...',
                      labelText: 'شاركنا مشكلتك لحلها',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 55,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: defaultButton(
                    radius: 30,
                    text: 'موافق',
                    isUpperCase: true,
                  ),
                ),
                Text('أو قم بالتواصل معنا عبر الحسابات التالية'),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: IconButton(
                        icon: new Image.asset('assets/icons/whats.png'),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(width: 15,),
                    IconButton(
                      icon: new Image.asset('assets/icons/inst.png'),
                      onPressed: (){},
                    ),
                    SizedBox(width: 15,),
                    IconButton(
                      icon: new Image.asset('assets/icons/facebook.png'),
                      onPressed: (){},
                    ),
                    SizedBox(width: 15,),
                    IconButton(
                      icon: new Image.asset('assets/icons/twitter.png'),
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
