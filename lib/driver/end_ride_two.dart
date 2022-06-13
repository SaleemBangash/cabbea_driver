// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/driver_ratings.dart';
import 'package:flutter/material.dart';

import '../main.dart';

import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'accept_offer_one.dart';
import 'end_ride.dart';

class EndRideTwo extends StatefulWidget {
  const EndRideTwo({Key? key}) : super(key: key);

  @override
  State<EndRideTwo> createState() => _EndRideTwoState();
}

class _EndRideTwoState extends State<EndRideTwo> with TickerProviderStateMixin {
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

  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EndRide()));
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
          padding: const EdgeInsets.symmetric(horizontal: 160),
          child: Text("4:00",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 29, color: Colors.black)),
        ),
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
                        child: Text("End Stop Over",
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
                              height: 290,
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("Rate The passenger",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _oneBeenPressed =
                                                    !_oneBeenPressed;
                                                // _hasBeenPressed = false;
                                                // _wasBeenPressed = false;
                                              });
                                            },
                                            child: _oneBeenPressed
                                                ? Icon(Icons.star,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                                : Icon(Icons.star_outline,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                            // Icon(
                                            //   Icons.star,
                                            //   size: 25,
                                            //   // color: _isBeenPressed
                                            //   //     ? Theme.of(context).primaryColor
                                            //   //     : Colors.white70,
                                            //   // // 3
                                            // ),
                                            );
                                      }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _twoBeenPressed =
                                                    !_twoBeenPressed;
                                                // _hasBeenPressed = false;
                                                // _wasBeenPressed = false;
                                              });
                                            },
                                            child: _twoBeenPressed
                                                ? Icon(Icons.star,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                                : Icon(Icons.star_outline,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                            // Icon(
                                            //   Icons.star,
                                            //   size: 25,
                                            //   // color: _isBeenPressed
                                            //   //     ? Theme.of(context).primaryColor
                                            //   //     : Colors.white70,
                                            //   // // 3
                                            // ),
                                            );
                                      }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _threeBeenPressed =
                                                    !_threeBeenPressed;
                                                // _hasBeenPressed = false;
                                                // _wasBeenPressed = false;
                                              });
                                            },
                                            child: _threeBeenPressed
                                                ? Icon(Icons.star,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                                : Icon(Icons.star_outline,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                            // Icon(
                                            //   Icons.star,
                                            //   size: 25,
                                            //   // color: _isBeenPressed
                                            //   //     ? Theme.of(context).primaryColor
                                            //   //     : Colors.white70,
                                            //   // // 3
                                            // ),
                                            );
                                      }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _fourBeenPressed =
                                                    !_fourBeenPressed;
                                                // _hasBeenPressed = false;
                                                // _wasBeenPressed = false;
                                              });
                                            },
                                            child: _fourBeenPressed
                                                ? Icon(Icons.star,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                                : Icon(Icons.star_outline,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                            // Icon(
                                            //   Icons.star,
                                            //   size: 25,
                                            //   // color: _isBeenPressed
                                            //   //     ? Theme.of(context).primaryColor
                                            //   //     : Colors.white70,
                                            //   // // 3
                                            // ),
                                            );
                                      }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _fiveBeenPressed =
                                                    !_fiveBeenPressed;
                                                // _hasBeenPressed = false;
                                                // _wasBeenPressed = false;
                                              });
                                            },
                                            child: _fiveBeenPressed
                                                ? Icon(Icons.star,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                                : Icon(Icons.star_outline,
                                                    size: 25,
                                                    color: Theme.of(context)
                                                        .primaryColor)
                                            // Icon(
                                            //   Icons.star,
                                            //   size: 25,
                                            //   // color: _isBeenPressed
                                            //   //     ? Theme.of(context).primaryColor
                                            //   //     : Colors.white70,
                                            //   // // 3
                                            // ),
                                            );
                                      }),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 140,
                                    width: sizeConfig!.width(0.72),
                                    child: MyTextField(
                                      // controller: textController,
                                      // // enabled: false,
                                      // onChanged: _onChanged,
                                      // focusedBorder: InputBorder.none,
                                      // enabledBorder: InputBorder.none,
                                      // errorBorder: InputBorder.none,
                                      // disabledBorder: InputBorder.none,
                                      // suffixIcon: Align(
                                      //     alignment: Alignment.bottomRight,
                                      //     child: Icon(Icons.home)),
                                      hintText: "Add Comments",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      filled: true,
                                      // maxLength: 1000,
                                      maxLines: 7,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 10),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Center(
                                    child: SizedBox(
                                      width: sizeConfig!.width(0.72),
                                      height: 40,
                                      child: MySecondButton(
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DriverRatings())),
                                          title: "Submit",
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
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
                Container(
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
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
