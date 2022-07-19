// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/new_chat/ride_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../main.dart';
import '../../widgets/text_field.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int charLength = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }

  final textController = TextEditingController();

  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool _isEnable = false;
  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;

  var iChecked;

//  @override
//   void initState() {
//     _load();
//     super.initState();
//   }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: _scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RidesHistory()));
          },
          child: Center(
            child: Text("Cancel",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      // backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage("assets/map.png"),
            fit: BoxFit.cover,
          ))),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text("Customer is comung",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          // Positioned(
          //   top: 40,
          //   child: GestureDetector(
          //     onTap: () {
          //       _scaffoldKey.currentState!.openDrawer();
          //     },
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Image.asset(
          //         'assets/side_bar.png',
          //         width: 60.0,
          //         height: 60.0,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //     bottom: sizeConfig!.height(0.029),
          //     left: sizeConfig!.width(0.10),
          //     child: SizedBox(
          //       width: sizeConfig!.width(0.82),
          //       height: 50,
          //       child: MySecondButton(
          //         border: Border.all(width: 1, color: Colors.white),
          //         onTap: () => _settingModalBottomSheet(context),
          //         title: "Let's Go",
          //         borderRadius: BorderRadius.circular(25.0),
          //       ),
          //     )),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () => _settingModalBottomSheet(context),
                  child: Container(
                    height: sizeConfig!.height(0.06),
                    width: sizeConfig!.width(0.90),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Theme.of(context).primaryColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/lets_ride.png"),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("Click",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
      // drawer: DrawerPage(),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Color(0xff252527),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: sizeConfig!.height(0.27),
            // width: sizeConfig!.width(0.37),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Center(
                    child: Text("Which Adress should\n route navigate to? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Street 159 90",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.green, fontSize: 17)),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Street 66",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.green, fontSize: 17)),
                ),
                Divider(
                  thickness: 2,
                ),
                Center(
                  child: Text("Close",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        });
  }

  // void _settingModalBottomSheet(context) {
  //   showModalBottomSheet(
  //       isScrollControlled: true,
  //       backgroundColor: Color(0xff252527),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(20.0),
  //       ),
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           height: 500,
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: [
  //                     Container(
  //                       height: 15,
  //                       width: 15,
  //                       decoration: BoxDecoration(
  //                           shape: BoxShape.circle,
  //                           color: Theme.of(context).primaryColor),
  //                     ),
  //                     Text("Pick-up Location",
  //                         style: TextStyle(color: Colors.white)),
  //                     GestureDetector(
  //                       // onTap: () {
  //                       //   Navigator.push(
  //                       //       context,
  //                       //       MaterialPageRoute(
  //                       //           builder: (context) => PickupOne()));
  //                       // },
  //                       child: Icon(
  //                         Icons.add,
  //                         color: Colors.white,
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 20, right: 20),
  //                 child: Divider(
  //                   thickness: 1,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 5),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: [
  //                     Icon(
  //                       Icons.location_on,
  //                       color: Colors.white,
  //                     ),
  //                     Text("Drop-off Location",
  //                         style: TextStyle(color: Colors.white)),
  //                     Padding(
  //                       padding: const EdgeInsets.only(),
  //                       child: GestureDetector(
  //                         // onTap: () {
  //                         //   Navigator.push(
  //                         //       context,
  //                         //       MaterialPageRoute(
  //                         //           builder: (context) => DropOff()));
  //                         // },
  //                         child: Icon(
  //                           Icons.add,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 20, right: 20),
  //                 child: Divider(
  //                   thickness: 1,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //               Container(
  //                 height: sizeConfig!.height(0.05),
  //                 width: sizeConfig!.width(0.9),
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(10.0),
  //                     color: Colors.white),
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text("Est.fare", style: TextStyle(color: Colors.black)),
  //                       Text("Rs.230", style: TextStyle(color: Colors.black)),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 15.0,
  //               ),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children: [
  //                   StatefulBuilder(
  //                       builder: (BuildContext context, StateSetter setState) {
  //                     return GestureDetector(
  //                       onTap: () {
  //                         setState(() {
  //                           _oneBeenPressed = !_oneBeenPressed;
  //                           _twoBeenPressed = false;
  //                           _threeBeenPressed = false;
  //                         });
  //                       },
  //                       child: _oneBeenPressed
  //                           ? Container(
  //                               height: sizeConfig!.height(0.12),
  //                               width: sizeConfig!.width(0.28),
  //                               decoration: BoxDecoration(
  //                                 // boxShadow: [
  //                                 //   BoxShadow(
  //                                 //     color: Colors.grey.withOpacity(0.8),
  //                                 //     spreadRadius: 0.5,
  //                                 //     blurRadius: 10.5,
  //                                 //     // offset: Offset(0, 2), // changes position of shadow
  //                                 //   ),
  //                                 // ],
  //                                 color: Theme.of(context).primaryColor,
  //                                 borderRadius: BorderRadius.circular(10.0),
  //                               ),
  //                               child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     GestureDetector(
  //                                       onTap: () => showDialog(
  //                                         barrierDismissible: true,
  //                                         // barrierColor: Theme.of(context).primaryColor,
  //                                         context: context,
  //                                         builder: (BuildContext context) {
  //                                           return AlertDialog(
  //                                             insetPadding: EdgeInsets.only(
  //                                                 right: 100, top: 90),
  //                                             // alignment: Alignment(0.2, 0.2),
  //                                             shape: RoundedRectangleBorder(
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(
  //                                                         15.0)), //this right here,
  //                                             backgroundColor: Theme.of(context)
  //                                                 .primaryColor,
  //                                             content: SizedBox(
  //                                               height: 20,
  //                                               width: 20,
  //                                               child: Column(
  //                                                 children: [
  //                                                   Center(
  //                                                     child: Text(
  //                                                         "Comfortable AC Ride",
  //                                                         textAlign:
  //                                                             TextAlign.center,
  //                                                         style: TextStyle(
  //                                                             color: Colors
  //                                                                 .white)),
  //                                                   ),
  //                                                 ],
  //                                               ),
  //                                             ),
  //                                           );
  //                                         },
  //                                       ),
  //                                       child: Align(
  //                                         alignment: Alignment.topRight,
  //                                         child: Padding(
  //                                           padding: const EdgeInsets.only(),
  //                                           child: Icon(
  //                                             Icons.info,
  //                                             size: 20,
  //                                             color: Colors.white,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Image.asset(
  //                                       "assets/prime_white.png",
  //                                       height: 50,
  //                                       width: 50,
  //                                     ),
  //                                     Text("Prime",
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                         )),
  //                                   ]))
  //                           : Container(
  //                               height: sizeConfig!.height(0.12),
  //                               width: sizeConfig!.width(0.28),
  //                               decoration: BoxDecoration(
  //                                 // boxShadow: [
  //                                 //   BoxShadow(
  //                                 //     color: Colors.grey.withOpacity(0.8),
  //                                 //     spreadRadius: 0.5,
  //                                 //     blurRadius: 10.5,
  //                                 //     // offset: Offset(0, 2), // changes position of shadow
  //                                 //   ),
  //                                 // ],
  //                                 color: Color(0xffECEBEB),
  //                                 borderRadius: BorderRadius.circular(10.0),
  //                               ),
  //                               child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     Align(
  //                                       alignment: Alignment.topRight,
  //                                       child: Padding(
  //                                         padding: const EdgeInsets.only(),
  //                                         child: Icon(
  //                                           Icons.info,
  //                                           size: 20,
  //                                           color:
  //                                               Theme.of(context).primaryColor,
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Image.asset(
  //                                       "assets/prime.png",
  //                                       height: 50,
  //                                       width: 50,
  //                                     ),
  //                                     Text("Prime",
  //                                         style: TextStyle(
  //                                           color:
  //                                               Theme.of(context).primaryColor,
  //                                         )),
  //                                   ])),
  //                     );
  //                   }),
  //                   StatefulBuilder(
  //                       builder: (BuildContext context, StateSetter setState) {
  //                     return GestureDetector(
  //                       onTap: () {
  //                         setState(() {
  //                           _twoBeenPressed = !_twoBeenPressed;
  //                           _oneBeenPressed = false;
  //                           _threeBeenPressed = false;
  //                         });
  //                       },
  //                       child: _twoBeenPressed
  //                           ? Container(
  //                               height: sizeConfig!.height(0.12),
  //                               width: sizeConfig!.width(0.28),
  //                               decoration: BoxDecoration(
  //                                 // boxShadow: [
  //                                 //   BoxShadow(
  //                                 //     color: Colors.grey.withOpacity(0.8),
  //                                 //     spreadRadius: 0.5,
  //                                 //     blurRadius: 10.5,
  //                                 //     // offset: Offset(0, 2), // changes position of shadow
  //                                 //   ),
  //                                 // ],
  //                                 color: Theme.of(context).primaryColor,
  //                                 borderRadius: BorderRadius.circular(10.0),
  //                               ),
  //                               child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     GestureDetector(
  //                                       onTap: () => showDialog(
  //                                         barrierDismissible: true,
  //                                         // barrierColor: Theme.of(context).primaryColor,
  //                                         context: context,
  //                                         builder: (BuildContext context) {
  //                                           return AlertDialog(
  //                                             insetPadding:
  //                                                 EdgeInsets.only(top: 90),
  //                                             shape: RoundedRectangleBorder(
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(
  //                                                         15.0)), //this right here,
  //                                             backgroundColor: Theme.of(context)
  //                                                 .primaryColor,
  //                                             content: SizedBox(
  //                                               height: 25,
  //                                               child: Column(
  //                                                 children: [
  //                                                   Center(
  //                                                     child: Text(
  //                                                         "Economical Ride With Comfort",
  //                                                         textAlign:
  //                                                             TextAlign.center,
  //                                                         style: TextStyle(
  //                                                             fontSize: 16,
  //                                                             color: Colors
  //                                                                 .white)),
  //                                                   ),
  //                                                 ],
  //                                               ),
  //                                             ),
  //                                           );
  //                                         },
  //                                       ),
  //                                       child: Align(
  //                                         alignment: Alignment.topRight,
  //                                         child: Padding(
  //                                           padding: const EdgeInsets.only(),
  //                                           child: Icon(
  //                                             Icons.info,
  //                                             size: 20,
  //                                             color: Colors.white,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Image.asset(
  //                                       "assets/cabini_white.png",
  //                                       height: 50,
  //                                       width: 50,
  //                                     ),
  //                                     Text("Cabbini",
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                         )),
  //                                   ]))
  //                           : Container(
  //                               height: sizeConfig!.height(0.12),
  //                               width: sizeConfig!.width(0.28),
  //                               decoration: BoxDecoration(
  //                                 // boxShadow: [
  //                                 //   BoxShadow(
  //                                 //     color: Colors.grey.withOpacity(0.8),
  //                                 //     spreadRadius: 0.5,
  //                                 //     blurRadius: 10.5,
  //                                 //     // offset: Offset(0, 2), // changes position of shadow
  //                                 //   ),
  //                                 // ],
  //                                 color: Color(0xffECEBEB),
  //                                 borderRadius: BorderRadius.circular(10.0),
  //                               ),
  //                               child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     Align(
  //                                       alignment: Alignment.topRight,
  //                                       child: Padding(
  //                                         padding: const EdgeInsets.only(),
  //                                         child: Icon(
  //                                           Icons.info,
  //                                           size: 20,
  //                                           color:
  //                                               Theme.of(context).primaryColor,
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Image.asset(
  //                                       "assets/cabini_fil.png",
  //                                       height: 50,
  //                                       width: 50,
  //                                     ),
  //                                     Text("Cabbini",
  //                                         style: TextStyle(
  //                                           color:
  //                                               Theme.of(context).primaryColor,
  //                                         )),
  //                                   ])),
  //                     );
  //                   }),
  //                   StatefulBuilder(
  //                       builder: (BuildContext context, StateSetter setState) {
  //                     return GestureDetector(
  //                       onTap: () {
  //                         setState(() {
  //                           _threeBeenPressed = !_threeBeenPressed;
  //                           _twoBeenPressed = false;
  //                           _oneBeenPressed = false;
  //                         });
  //                       },
  //                       child: _threeBeenPressed
  //                           ? Container(
  //                               height: sizeConfig!.height(0.12),
  //                               width: sizeConfig!.width(0.28),
  //                               decoration: BoxDecoration(
  //                                 // boxShadow: [
  //                                 //   BoxShadow(
  //                                 //     color: Colors.grey.withOpacity(0.8),
  //                                 //     spreadRadius: 0.5,
  //                                 //     blurRadius: 10.5,
  //                                 //     // offset: Offset(0, 2), // changes position of shadow
  //                                 //   ),
  //                                 // ],
  //                                 color: Theme.of(context).primaryColor,
  //                                 borderRadius: BorderRadius.circular(10.0),
  //                               ),
  //                               child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     Align(
  //                                       alignment: Alignment.topRight,
  //                                       child: Padding(
  //                                         padding: const EdgeInsets.only(),
  //                                         child: Icon(
  //                                           Icons.info,
  //                                           size: 20,
  //                                           color: Colors.white,
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Image.asset(
  //                                       "assets/bike_white.png",
  //                                       height: 50,
  //                                       width: 50,
  //                                     ),
  //                                     Text("Bikee",
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                         )),
  //                                   ]))
  //                           : Container(
  //                               height: sizeConfig!.height(0.12),
  //                               width: sizeConfig!.width(0.28),
  //                               decoration: BoxDecoration(
  //                                 // boxShadow: [
  //                                 //   BoxShadow(
  //                                 //     color: Colors.grey.withOpacity(0.8),
  //                                 //     spreadRadius: 0.5,
  //                                 //     blurRadius: 10.5,
  //                                 //     // offset: Offset(0, 2), // changes position of shadow
  //                                 //   ),
  //                                 // ],
  //                                 color: Color(0xffECEBEB),
  //                                 borderRadius: BorderRadius.circular(10.0),
  //                               ),
  //                               child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     GestureDetector(
  //                                       onTap: () => showDialog(
  //                                         barrierDismissible: true,
  //                                         // barrierColor: Theme.of(context).primaryColor,
  //                                         context: context,
  //                                         builder: (BuildContext context) {
  //                                           return Align(
  //                                             alignment: Alignment.topLeft,
  //                                             child: AlertDialog(
  //                                               insetPadding: EdgeInsets.only(
  //                                                   left: 100, top: 90),
  //                                               shape: RoundedRectangleBorder(
  //                                                   borderRadius:
  //                                                       BorderRadius.circular(
  //                                                           15.0)), //this right here,
  //                                               backgroundColor:
  //                                                   Theme.of(context)
  //                                                       .primaryColor,
  //                                               content: SizedBox(
  //                                                 height: 25,
  //                                                 child: Column(
  //                                                   children: [
  //                                                     Center(
  //                                                       child: Text(
  //                                                           "Economical Ride With Comfort",
  //                                                           textAlign: TextAlign
  //                                                               .center,
  //                                                           style: TextStyle(
  //                                                               fontSize: 16,
  //                                                               color: Colors
  //                                                                   .white)),
  //                                                     ),
  //                                                   ],
  //                                                 ),
  //                                               ),
  //                                             ),
  //                                           );
  //                                         },
  //                                       ),
  //                                       child: Align(
  //                                         alignment: Alignment.topRight,
  //                                         child: Padding(
  //                                           padding: const EdgeInsets.only(),
  //                                           child: Icon(
  //                                             Icons.info,
  //                                             size: 20,
  //                                             color: Theme.of(context)
  //                                                 .primaryColor,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Image.asset(
  //                                       "assets/bike.png",
  //                                       height: 50,
  //                                       width: 50,
  //                                     ),
  //                                     Text("Bike",
  //                                         style: TextStyle(
  //                                             color: Theme.of(context)
  //                                                 .primaryColor)),
  //                                   ])),
  //                     );
  //                   }),
  //                 ],
  //               ),
  //               SizedBox(
  //                 height: 10,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 20),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   children: [
  //                     Icon(Icons.message,
  //                         color: Theme.of(context).primaryColor),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(left: 10),
  //                       child: Text("Add Comments",
  //                           style: TextStyle(color: Colors.white)),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 10,
  //               ),
  //               GestureDetector(
  //                 onTap: () => _commentModalBottomSheet(context),
  //                 child: Container(
  //                   height: 50,
  //                   width: sizeConfig!.width(0.90),
  //                   decoration: BoxDecoration(
  //                       border: Border.all(width: 1),
  //                       color: Color(0xffEBEBEB),
  //                       borderRadius: BorderRadius.circular(5.0)),
  //                   child: Padding(
  //                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
  //                     child: Text("Add Comments",
  //                         style: TextStyle(color: Colors.black)),
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 20.0,
  //               ),
  //               GestureDetector(
  //                 onTap: () => showDialog(
  //                   barrierDismissible: true,
  //                   // barrierColor: Theme.of(context).primaryColor,
  //                   context: context,
  //                   builder: (BuildContext context) {
  //                     return Expanded(
  //                       child: AlertDialog(
  //                         shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(
  //                                 15.0)), //this right here,
  //                         backgroundColor: Theme.of(context).primaryColor,
  //                         content: SizedBox(
  //                           height: 150,
  //                           child: Column(
  //                             children: [
  //                               Align(
  //                                 alignment: Alignment.topRight,
  //                                 child: GestureDetector(
  //                                   // onTap: () => Navigator.push(
  //                                   //     context,
  //                                   //     MaterialPageRoute(
  //                                   //         builder: (context) => Broadcast())),
  //                                   child: Container(
  //                                       height: 20,
  //                                       width: 20,
  //                                       decoration: BoxDecoration(
  //                                           shape: BoxShape.circle,
  //                                           color: Colors.white),
  //                                       child: Center(
  //                                         child: Icon(
  //                                           Icons.close,
  //                                           size: 20,
  //                                           color:
  //                                               Theme.of(context).primaryColor,
  //                                         ),
  //                                       )),
  //                                 ),
  //                               ),
  //                               SizedBox(
  //                                 height: 20,
  //                               ),
  //                               Text(
  //                                   "Dear Abad\nCabbea welcomes you on board. Once\n "
  //                                   "you press lets ride button then wait for discount Offer",
  //                                   textAlign: TextAlign.center,
  //                                   style: TextStyle(
  //                                       color: Colors.white, fontSize: 18)),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     );
  //                   },
  //                 ),
  //                 child: Container(
  //                   height: sizeConfig!.height(0.06),
  //                   width: sizeConfig!.width(0.90),
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(5.0),
  //                       border: Border.all(width: 1, color: Colors.white),
  //                       color: Theme.of(context).primaryColor),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       Image.asset("assets/lets_ride.png"),
  //                       SizedBox(
  //                         width: 5.0,
  //                       ),
  //                       Text("Let's Ride",
  //                           style: TextStyle(color: Colors.white))
  //                     ],
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         );
  //       });

  //   // _load() {
  //   //   Future.delayed(const Duration(milliseconds: 5000), () {
  //   //     Navigator.push(context, MaterialPageRoute(builder: (_) => Broadcast()));
  //   //   });
  //   // }
  // }

  // void _commentModalBottomSheet(context) {
  //   showModalBottomSheet(
  //       isScrollControlled: true,
  //       backgroundColor: Color(0xff252527),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(20.0),
  //       ),
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           height: 650,
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Colors.grey[200],
  //                     borderRadius: BorderRadius.circular(15.0)),
  //                 height: 180,
  //                 width: 330,
  //                 child: Column(
  //                   children: [
  //                     GestureDetector(
  //                       onTap: () => setState(() {
  //                         _isEnable = true;
  //                       }),
  //                       child: SizedBox(
  //                         height: 140,
  //                         width: 300,
  //                         child: MyTextField(
  //                           controller: textController,
  //                           // enabled: false,
  //                           onChanged: _onChanged,
  //                           focusedBorder: InputBorder.none,
  //                           enabledBorder: InputBorder.none,
  //                           errorBorder: InputBorder.none,
  //                           disabledBorder: InputBorder.none,
  //                           // suffixIcon: Align(
  //                           //     alignment: Alignment.bottomRight,
  //                           //     child: Icon(Icons.home)),
  //                           hintText: "Add Comments",
  //                           border: OutlineInputBorder(
  //                               borderRadius: BorderRadius.only(
  //                                   topLeft: Radius.circular(15.0),
  //                                   topRight: Radius.circular(15.0))),
  //                           filled: true,
  //                           // maxLength: 1000,
  //                           maxLines: 7,
  //                           contentPadding: EdgeInsets.symmetric(
  //                               vertical: 20, horizontal: 10),
  //                         ),
  //                       ),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomCenter,
  //                       child: Padding(
  //                         padding: const EdgeInsets.only(right: 10),
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Padding(
  //                                 padding: EdgeInsets.all(8.0),
  //                                 child: Text("$charLength/1000",
  //                                     style: TextStyle(fontSize: 15))),
  //                             Text("Let's Go",
  //                                 style: TextStyle(
  //                                     color: Theme.of(context).primaryColor))
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),

  //               // TextFormField(inputFormatters: [
  //               //   LengthLimitingTextInputFormatter(10),
  //               // ])
  //             ],
  //           ),
  //         );
  //       });
  // }

  // _dialogue() {
  //   Dialog(
  //     alignment: Alignment.center,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(30.0),
  //       topRight: Radius.circular(30.0),
  //       bottomRight: Radius.circular(30.0),
  //       bottomLeft: Radius.circular(30.0),
  //     )),
  //     child: SizedBox(
  //       height: 200,
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(30),
  //           topRight: Radius.circular(30),
  //           bottomRight: Radius.circular(30.0),
  //           bottomLeft: Radius.circular(30.0),
  //         ),
  //         child: Scaffold(
  //           // appBar: AppBar(
  //           //   shape: RoundedRectangleBorder(
  //           //       borderRadius: BorderRadius.only(
  //           //           topLeft: Radius.circular(10.0),
  //           //           topRight: Radius.circular(10.0))),
  //           //   automaticallyImplyLeading: false,
  //           //   centerTitle: false,
  //           //   title: Text(
  //           //     "ExitApp?",
  //           //     style: TextStyle(color: Colors.white),
  //           //   ),
  //           //   backgroundColor: Theme.of(context).primaryColor,
  //           // ),
  //           body: ClipRRect(
  //             borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(50), topRight: Radius.circular(50)),
  //             child: Container(
  //               decoration: BoxDecoration(
  //                   // color: Colors.grey,

  //                   ),
  //               height: 200,
  //               //width: width / 3,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(12.0),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     // Container(
  //                     //   width: 600,
  //                     //   height: 70,
  //                     //   decoration:
  //                     //       BoxDecoration(color: Theme.of(context).primaryColor),
  //                     //   child: Row(
  //                     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     //     children: [
  //                     //       Padding(
  //                     //         padding: const EdgeInsets.only(left: 40),
  //                     //         child: Text(
  //                     //           "Change Language",
  //                     //           style: TextStyle(
  //                     //               fontSize: 20, fontWeight: FontWeight.bold),
  //                     //         ),
  //                     //       ),
  //                     //       IconButton(
  //                     //         icon: Icon(
  //                     //           Icons.close,
  //                     //         ),
  //                     //         iconSize: 30,
  //                     //         color: Colors.black,
  //                     //         splashColor: Colors.purple,
  //                     //         onPressed: () => Navigator.push(
  //                     //             context,
  //                     //             MaterialPageRoute(
  //                     //                 builder: (context) => LoginScreen())),
  //                     //       ),
  //                     //     ],
  //                     //   ),
  //                     // ),
  //                     Text("Do you want to hide your profile?"),
  //                     SizedBox(
  //                       height: 20,
  //                     ),

  //                     Padding(
  //                       padding: const EdgeInsets.only(right: 30),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         children: [
  //                           GestureDetector(
  //                             onTap: (() {
  //                               Navigator.push(
  //                                   context,
  //                                   MaterialPageRoute(
  //                                       builder: (context) => Registration()));
  //                             }),
  //                             child: Padding(
  //                               padding: const EdgeInsets.only(left: 20),
  //                               child: Container(
  //                                   decoration: BoxDecoration(
  //                                       color: Colors.grey,
  //                                       borderRadius:
  //                                           BorderRadius.circular(10.0)),
  //                                   // width: 200,
  //                                   // height: 40,
  //                                   width: sizeConfig!.width(0.2),
  //                                   height: sizeConfig!.height(0.04),
  //                                   child: Center(
  //                                       child: Text(
  //                                     "Yes",
  //                                     style: TextStyle(
  //                                         fontWeight: FontWeight.bold,
  //                                         color: Colors.white),
  //                                   ))),
  //                             ),
  //                           ),
  //                           SizedBox(
  //                             width: 10,
  //                           ),
  //                           Container(
  //                               width: sizeConfig!.width(0.2),
  //                               height: sizeConfig!.height(0.04),
  //                               child: MySecondButton(
  //                                 borderRadius: BorderRadius.circular(10),
  //                                 title: ("No"),
  //                                 onTap: (() {
  //                                   Navigator.pop(
  //                                     context,
  //                                   );
  //                                 }),
  //                               )),
  //                         ],
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

//  StatefulBuilder(
//                         builder: (BuildContext context, StateSetter setState) {
//                       return Checkbox(
//                         activeColor: Theme.of(context).primaryColor,
//                         checkColor: Theme.of(context).primaryColor,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         value: isChecked,
//                         onChanged: (bool? value) {
//                           setState(() {
//                             isChecked = value!;
//                             onChecked = false;
//                           });
//                         },
//                       );
//                     }),
