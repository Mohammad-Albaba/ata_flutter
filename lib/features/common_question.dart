import 'package:flutter/material.dart';

class CommonQuestion extends StatefulWidget {
  @override
  State<CommonQuestion> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<CommonQuestion> {
  List _data = generateItems(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'أسئلة شائعة',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ExpansionPanelList(
                expansionCallback: (int index, isExpanded){
                  setState(() {
                    _data[index].isExpanded = !isExpanded;
                  });
                },
                children: _data.map<ExpansionPanel>((item){
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, isExpanded){
                      return ListTile(
                        title: Text('كيف سمعت عنا ؟'),
                      );
                    },
                    body: Column(
                      children: [
                        Text('بواسطة وسائل التواصل الاجتماعي والإعلانات المدفوعة'),
                        SizedBox(height: 20,),
                      ],
                    ),
                    isExpanded: item.isExpanded,
                  );
                }).toList(),

              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10.0,
                  bottom: 16.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              ExpansionPanelList(
                expansionCallback: (int index, isExpandedTwo){
                  setState(() {
                    _data[index].isExpandedTwo = !isExpandedTwo;
                  });
                },
                children: _data.map<ExpansionPanel>((item){
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, isExpandedTwo){
                      return ListTile(
                        title: Text('لماذا يجب عليناأن نسأجرك'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Safety Devices'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('.Driver Airbag'),
                                Text('.Side Airbag'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Exterior Option'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('.Rear Spoiler'),
                                Spacer(),
                                Text('.Roof Rack'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Interior Option'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('.Bluetooth'),
                                    Text('.Power Windows'),
                                    Text('.Button Start/Stop'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    isExpanded: item.isExpandedTwo,
                  );
                }).toList(),

              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10.0,
                  bottom: 16.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              ExpansionPanelList(
                expansionCallback: (int index, isExpandedTwo){
                  setState(() {
                    _data[index].isExpandedTwo = !isExpandedTwo;
                  });
                },
                children: _data.map<ExpansionPanel>((item){
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, isExpandedTwo){
                      return ListTile(
                        title: Text('هل أستطيع أن أعيد الحجز عن طريق موعدي الفائت ؟'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Safety Devices'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('.Driver Airbag'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Exterior Option'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('.Rear Spoiler'),
                                Spacer(),
                                Text('.Roof Rack'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Interior Option'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('.Air Condinitior'),
                                    Text('.Heading Seat'),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('.Full Auto Air Conditioner'),
                                    Text('.Leather Seats '),
                                    Text('.Heated Steering'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    isExpanded: item.isExpandedTwo,
                  );
                }).toList(),

              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10.0,
                  bottom: 16.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              ExpansionPanelList(
                expansionCallback: (int index, isExpandedTwo){
                  setState(() {
                    _data[index].isExpandedTwo = !isExpandedTwo;
                  });
                },
                children: _data.map<ExpansionPanel>((item){
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, isExpandedTwo){
                      return ListTile(
                        title: Text('هل منتجاتكم مضمونة ؟'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Safety Devices'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('.Driver Airbag'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Exterior Option'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('.Rear Spoiler'),
                                Spacer(),
                                Text('.Roof Rack'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Interior Option'),
                          SizedBox(height: 8.0,),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0,),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('.Air Condinitior'),
                                    Text('.Heading Seat'),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('.Full Auto Air Conditioner'),
                                    Text('.Leather Seats '),
                                    Text('.Heated Steering'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    isExpanded: item.isExpandedTwo,
                  );
                }).toList(),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Item{
  String expandedValue;
  String headerValue;
  bool isExpanded;
  bool isExpandedTwo;

  Item({this.expandedValue,this.headerValue,this.isExpanded=false,this.isExpandedTwo=false});
}
List<Item> generateItems(int numberOfItems){
  return List.generate(numberOfItems, (index){
    return Item(
        headerValue: 'Details $index',
        expandedValue: 'This is item number $index'
    );
  });
}