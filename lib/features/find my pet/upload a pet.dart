// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final pickedFile = ImagePicker();

  get imagepicker => null;
  uploadImage() async {
    var pickedImage = await imagepicker.getImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe6f0fa),
        appBar: AppBar(
          backgroundColor: Color(0xffe6f0fa),
          title: Text(
            "Register a lost pet",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child:
            Container(
                padding: EdgeInsets.all(15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload a photo of the lost pet",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DottedBorder(
                          color: Colors.blue,
                          strokeWidth: 2,
                          dashPattern: [
                            5,
                            5,
                          ],
                          child: InkWell(
                            onTap: () {
                              uploadImage;
                            },
                            child: Container(
                              width: 500,
                              height: 250,
                              child: Image.asset(
                                "Images/assets/WhatsApp Image 2024-05-11 at 06.18.48_a944f85a.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 1,width: 150,color: Colors.black45,),
                          Text("or",style: TextStyle(color: Colors.blue[700],fontSize: 20) ,),
                          Container(height: 1,width: 150,color: Colors.black45,),
                        ],
                      ),
                      Container(
                        width: 600,
                        child:
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Icon(Icons.camera_alt,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text(
                                  "Open Camera",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ]),
                          color: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ), ),
                      Text(
                        "Location of lost pet",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Select Country",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.teal),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                    Icon(Icons.keyboard_arrow_down_rounded)))),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Select Governate",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.teal),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                    Icon(Icons.keyboard_arrow_down_rounded)))),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Select City",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.teal),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                    Icon(Icons.keyboard_arrow_down_rounded)))),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Animal Type",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.teal),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                    Icon(Icons.keyboard_arrow_down_rounded)))),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Detailed Address",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 13),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.teal),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Animal Type",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.teal),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                    Icon(Icons.keyboard_arrow_down_rounded)))),
                      ),
                      Container(
                        width: 600,
                        child:
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Find pet",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          color: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),

                    ])
            )
        ),
      ),
    );
  }
}
