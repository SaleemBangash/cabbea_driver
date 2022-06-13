// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../main.dart';

import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import 'accept_offer.dart';
import 'driver_drawer.dart';
import 'driver_ratings.dart';
import 'main_screen_online.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      drawer: DriverDrawer(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: FlutterSwitch(
            height: 25.0,
            width: 45.0,
            padding: 4.0,
            toggleSize: 20.0,
            borderRadius: 15.0,
            activeColor: Theme.of(context).primaryColor,
            value: isToggled,
            onToggle: (value) {
              setState(() {
                isToggled = !isToggled;
              });
            },
          ),
        ),
      ],
      data: Text(""),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(top: 20),
              // color: Color(0xffEBEBEB),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset("assets/person.png"),
                                Text("Ali"),
                                Text("Just Now")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ShamsAbad Metro Station",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                Text("G-7 Islamabad"),
                                Text("PKR230")
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "-5KM",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => showDialog(
                      barrierDismissible: true,
                      // barrierColor: Theme.of(context).primaryColor,
                      context: context,
                      builder: (BuildContext context) {
                        return Expanded(
                          child: AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0)), //this right here,
                            backgroundColor: Color(0xff272525),
                            content: SizedBox(
                              height: 150,
                              child: Column(
                                children: [
                                  Container(
                                    width: sizeConfig!.width(0.82),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xffEBEBEB),
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Add Destination",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Icon(Icons.add,
                                              color: Theme.of(context)
                                                  .primaryColor)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: sizeConfig!.width(0.82),
                                    height: 50,
                                    child: MySecondButton(
                                      title: "Save",
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    child: Container(
                        height: 100,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Image.asset("assets/person.png"),
                                  Text("Ali"),
                                  Text("Just Now")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ShamsAbad Metro Station",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  Text("G-7 Islamabad"),
                                  Text("PKR230")
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "-5KM",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 100,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset("assets/person.png"),
                                Text("Ali"),
                                Text("Just Now")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ShamsAbad Metro Station",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                Text("G-7 Islamabad"),
                                Text("PKR230")
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "-5KM",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Theme.of(context).primaryColor),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        selectedFontSize: 0.0,
        unselectedIconTheme: const IconThemeData(size: 21),
        unselectedFontSize: 0.0,
        backgroundColor: Color(0xff272525),
        items: [
          BottomNavigationBarItem(
            label: "MyRides",
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreenOnline())),
                child: Image.asset("assets/my_rides.png")),
          ),
          BottomNavigationBarItem(
            label: "MyEarnings",
            backgroundColor: Colors.white,
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccepDriverOffer())),
                child: Image.asset("assets/my_earnings.png")),
          ),
          BottomNavigationBarItem(
            label: "MyRatings",
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverRatings())),
                child: Image.asset("assets/my_ratings.png")),
          )
        ],
      ),
    );
  }
}
