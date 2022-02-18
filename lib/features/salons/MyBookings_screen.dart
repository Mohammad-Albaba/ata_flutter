import 'package:flutter/material.dart';

class MyBookingsScreen extends StatefulWidget {

  @override
  _MyBookingsScreenState createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            'حجوزاتي',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                child: Container(
                  child: TabBar(
                      labelColor: Colors.blue,
                      isScrollable: true,
                      unselectedLabelColor: Colors.black.withOpacity(0.8),
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(
                          child: Text('الكل'),
                        ),
                        Tab(
                          child: Text('حجز مؤكد'),
                        ),
                        Tab(
                          child: Text('قيد الانتظار'),
                        ),
                        Tab(
                          child: Text('حجز ملغي'),
                        ),
                      ]),
                ),
              ),
              preferredSize: Size.fromHeight(50.0)),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 16.0,),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => buildCardItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 0.0,
                ),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildCardItem() => Padding(
    padding: const EdgeInsets.only(top: 8,right: 8,left: 8,bottom: 8),
    child: Container(
      height: 180,
      color: Colors.white.withOpacity(.9),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5.0,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'مركز صالون بيوتي',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12.withOpacity(.1),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.access_time)),
                          Text('8:00-9:00 PM'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12.withOpacity(.1),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.access_time)),
                          Text('8:00-9:00 PM'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('السعر'),
                      Text('150 SAR'),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.lightBlue[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: Text(
                        'قيد الانتظار',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
