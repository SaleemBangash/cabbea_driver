// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/ride_confirmed.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import 'accept_offer_one.dart';
import 'end_ride_two.dart';

class EndRide extends StatefulWidget {
  const EndRide({Key? key}) : super(key: key);

  @override
  State<EndRide> createState() => _EndRideState();
}

class _EndRideState extends State<EndRide> with TickerProviderStateMixin {
  AnimationController? _controller;
  double value = 0;

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller?.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RideConfirmed()));
        },
        child: Center(
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 10),
      //     child: GestureDetector(
      //       onTap: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => Dashboard()));
      //       },
      //       child: Center(
      //         child: Text(
      //           "Cancel",
      //           style: TextStyle(color: Theme.of(context).primaryColor),
      //         ),
      //       ),
      //     ),
      //   )
      // ],
      // bottom: PreferredSize(
      //   child: SizedBox(
      //     height: 10,
      //     width: 400,
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(35.0),
      //       child: LinearProgressIndicator(
      //         backgroundColor: Colors.white,
      //         color: Theme.of(context).primaryColor,
      //         value: _controller?.value,
      //       ),
      //     ),
      //   ),
      //   preferredSize: Size.fromHeight(20.0),
      // ),
      data: Text(''),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        // Center(
        //   child: Positioned(
        //     top: sizeConfig!.height(0.23),
        //     left: sizeConfig!.width(0.30),
        //     child: Column(
        //       // mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         SizedBox(
        //           height: 30,
        //         ),
        //         GestureDetector(
        //             onTap: () => Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => SetDestintion())),
        //             child: Image.asset("assets/cab_icon.png")),
        //         Text(
        //           "Customer Have been Informed",
        //           textAlign: TextAlign.center,
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: sizeConfig!.height(0.06),
              width: sizeConfig!.width(0.45),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(width: 1, color: Colors.white),
                  color: Theme.of(context).primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.navigation, color: Colors.white),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Navigate", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff272525),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0))),
            height: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/person.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Ali", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("G-7 Islamabad",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ShamsAbad Metro Station",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4KM", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("PKR230", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.whatsapp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 1, color: Colors.white)),
                    width: sizeConfig!.width(0.82),
                    height: 40,
                    child: Center(
                        child: Text("Stop Over",
                            style: TextStyle(color: Colors.white)))),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: sizeConfig!.width(0.82),
                  height: 50,
                  child: MySecondButton(
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
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                          "Do you Want to End The Ride?",
                                          style:
                                              TextStyle(color: Colors.white))),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: sizeConfig!.width(0.82),
                                    height: 50,
                                    child: MySecondButton(
                                      title: "Yes",
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) =>
                                    //               Dashboard()));
                                    // },
                                    child: Container(
                                        height: 50,
                                        width: sizeConfig!.width(0.82),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            color: Color(0xff272525)),
                                        child: Center(
                                            child: Text("No",
                                                style: TextStyle(
                                                    color: Colors.white)))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    border: Border.all(width: 1, color: Colors.white),
                    title: "End Ride",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EndRideTwo()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff272525),
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              width: 1, color: Theme.of(context).primaryColor)),
                      width: sizeConfig!.width(0.82),
                      height: 40,
                      child: Center(
                          child: Text("Continue Ride",
                              style: TextStyle(color: Colors.white)))),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
