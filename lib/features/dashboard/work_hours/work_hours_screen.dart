// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';


void main() {
  runApp(
      MaterialApp(home:WorkHoursScreen()));
}

class WorkHoursScreen extends StatefulWidget {
  const WorkHoursScreen({super.key});

  @override
  State<WorkHoursScreen> createState() => _MyAppState();
}

class _MyAppState extends State<WorkHoursScreen> with SingleTickerProviderStateMixin {
  List WeekDays = [
    {"name : Saturday"},
    {"name : Sunday"},
    {"name : Monday"},
    {"name : Tuesday",},
    {"name : Wednesday"},
    {"name : Thursday"},
    {"name : Friday"}];
  bool Status = true;
  bool State = true;
  var hour = 0;
  var minute = 0;
  var timeFormat = "AM";
  void _showDatePicker (){
    showDatePicker(
        context: context,
        initialDate:DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2040));
  }
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Dashboard",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                )),
          ),
        ),
        body: SingleChildScrollView(
          child:
          Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(children: [
                Text(
                  "MEOW!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(" Amr Sherif")
              ]),
            ),
            Container(
              child: TabBar(
                  controller: tabController,
                  indicatorColor: Colors.teal[700],
                  labelColor: Colors.teal[700],
                  unselectedLabelColor: Colors.grey[400],
                  tabs: [
                    Tab(
                        child: Text(
                          "Appointments",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                        )),
                    Tab(
                      child: Text("Work Hours",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                    )
                  ]),
            ),
            Container(
              width: double.maxFinite,
              height: 550,
              child: TabBarView(controller: tabController, children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 40,
                                backgroundImage:
                                AssetImage('Images/assets/www.jpg')),
                          ),
                          Text(
                            "Amr Sherif",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold),
                          ),
                          Text("10:00 PM",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.bold)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                            color: Colors.grey[500],
                          )
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: ListView.builder(
                      itemCount: WeekDays.length,
                      itemBuilder: (context, i) {
                        return Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
                            child: Column(children: [
                              SwitchListTile(
                                  title: Text(
                                    ("Saturday"),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.teal[700],
                                  value: Status,
                                  onChanged: (val) {
                                    setState(() {
                                      Status = val;
                                    });
                                  }),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Text(
                                    "From",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                      child: Text("11:00 AM "),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "to",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text("12:00 PM "),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(16)),
                                                  content: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SwitchListTile(
                                                            title: Text(
                                                              ("Saturday"),
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  fontSize: 20),
                                                            ),
                                                            activeColor: Colors.white,
                                                            activeTrackColor:
                                                            Colors.teal[700],
                                                            value: State,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                State = val;
                                                              });
                                                            }),
                                                        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween
                                                              ,children:[
                                                                Text("From",style: TextStyle(color: Colors.grey),),
                                                                TextButton(
                                                                    onPressed: () {},
                                                                    child: Text(
                                                                      "Copy to all Days",
                                                                      style: TextStyle(
                                                                          color:
                                                                          Colors.teal[700]),
                                                                      textAlign: TextAlign.end,)
                                                                ),
                                                              ]),
                                                        ),
                                                        Row(children:[
                                                          NumberPicker(
                                                            minValue: 0,
                                                            maxValue: 12,
                                                            value: hour,
                                                            zeroPad: true,
                                                            infiniteLoop: true,
                                                            itemHeight: 60,
                                                            itemWidth: 80,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                hour = val;
                                                              });
                                                            },
                                                            textStyle: TextStyle(color: Colors.grey, fontSize: 20),
                                                            selectedTextStyle: TextStyle(color: Colors.black, fontSize: 20),
                                                          ),
                                                          NumberPicker(
                                                              minValue: 0,
                                                              maxValue: 12,
                                                              value: minute,
                                                              zeroPad: true,
                                                              infiniteLoop: true,
                                                              itemHeight: 60,
                                                              itemWidth: 80,
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  minute = val;
                                                                });
                                                              },
                                                              textStyle: TextStyle(color: Colors.grey, fontSize: 20),
                                                              selectedTextStyle: TextStyle(color: Colors.black, fontSize: 20)
                                                          ),
                                                          Column(
                                                              children: [
                                                                GestureDetector(onTap: (){
                                                                  setState(() {
                                                                    timeFormat = "AM";
                                                                  });
                                                                },
                                                                  child: Container(
                                                                      child: Text("AM",style: TextStyle(color: timeFormat == "AM"? Colors.grey : Colors.black),)),
                                                                ),
                                                                SizedBox(height: 10,),
                                                                GestureDetector(onTap: (){
                                                                  setState(() {
                                                                    timeFormat = "PM";
                                                                  });
                                                                },
                                                                    child: Container(
                                                                        child: Text("PM",style: TextStyle(color: timeFormat == "PM"? Colors.grey : Colors.black),))
                                                                ),
                                                              ]),
                                                        ],),
                                                        Padding(padding:EdgeInsets.symmetric(horizontal: 15),
                                                            child: Text("to",style: TextStyle(color: Colors.grey),)),
                                                        Row(children:[
                                                          NumberPicker(
                                                            minValue: 0,
                                                            maxValue: 12,
                                                            value: hour,
                                                            zeroPad: true,
                                                            infiniteLoop: true,
                                                            itemHeight: 60,
                                                            itemWidth: 80,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                hour = val;
                                                              });
                                                            },
                                                            textStyle: TextStyle(color: Colors.grey, fontSize: 20),
                                                            selectedTextStyle: TextStyle(color: Colors.black, fontSize: 20),
                                                          ),
                                                          NumberPicker(
                                                              minValue: 0,
                                                              maxValue: 12,
                                                              value: minute,
                                                              zeroPad: true,
                                                              infiniteLoop: true,
                                                              itemHeight: 60,
                                                              itemWidth: 80,
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  minute = val;
                                                                });
                                                              },
                                                              textStyle: TextStyle(color: Colors.grey, fontSize: 20),
                                                              selectedTextStyle: TextStyle(color: Colors.black, fontSize: 20)
                                                          ),
                                                          Column(
                                                              children: [
                                                                GestureDetector(onTap: (){
                                                                  setState(() {
                                                                    timeFormat = "AM";
                                                                  });
                                                                },
                                                                  child: Container(
                                                                      child: Text("AM",style: TextStyle(color: timeFormat == "AM"? Colors.grey : Colors.black),)),
                                                                ),
                                                                SizedBox(height: 10,),
                                                                GestureDetector(onTap: (){
                                                                  setState(() {
                                                                    timeFormat = "PM";
                                                                  });
                                                                },
                                                                    child: Container(
                                                                        child: Text("PM",style: TextStyle(color: timeFormat == "PM"? Colors.grey : Colors.black),))
                                                                ),
                                                              ]),
                                                        ],),
                                                        Row(children: [

                                                          Text("Minutes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                                                        ],)
                                                      ])
                                              );
                                            });
                                      },
                                      child: Text("Edit",
                                          style: TextStyle(
                                              color: Colors.teal[700],
                                              fontWeight: FontWeight.bold)))
                                ]),
                              )
                            ]));
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
