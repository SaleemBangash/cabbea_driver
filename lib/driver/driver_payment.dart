// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import 'main_screen_online.dart';

class DriverPayment extends StatefulWidget {
  const DriverPayment({Key? key}) : super(key: key);

  @override
  State<DriverPayment> createState() => _DriverPaymentState();
}

class _DriverPaymentState extends State<DriverPayment> {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;

  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainScreenOnline()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => Dashboard()));
            // },
            child: Center(
              child: Text(
                "Cancel",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        )
      ],
      data: Text(''),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        // Positioned(
        //     bottom: sizeConfig!.height(0.029),
        //     left: sizeConfig!.width(0.10),
        //     child: SizedBox(
        //       width: sizeConfig!.width(0.82),
        //       height: 50,
        //       child: MySecondButton(
        //         onTap: () => showDialog(
        //           barrierDismissible: true,
        //           // barrierColor: Theme.of(context).primaryColor,
        //           context: context,
        //           builder: (BuildContext context) {
        //             return Expanded(
        //               child: Dialog(
        //                 backgroundColor: Color(0xff272525),
        //                 alignment: Alignment.center,
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.only(
        //                   topLeft: Radius.circular(10.0),
        //                   topRight: Radius.circular(10.0),
        //                   bottomRight: Radius.circular(10.0),
        //                   bottomLeft: Radius.circular(10.0),
        //                 )),
        //                 child: SizedBox(
        //                   height: 590,
        //                   width: 450,
        //                   child: ClipRRect(
        //                     borderRadius: BorderRadius.only(
        //                       topLeft: Radius.circular(10),
        //                       topRight: Radius.circular(10),
        //                       bottomRight: Radius.circular(10.0),
        //                       bottomLeft: Radius.circular(10.0),
        //                     ),
        //                     child: Scaffold(
        //                       appBar: AppBar(
        //                         toolbarHeight: 40,
        //                         shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.only(
        //                                 topLeft: Radius.circular(10.0),
        //                                 topRight: Radius.circular(10.0))),
        //                         automaticallyImplyLeading: false,
        //                         title: Text(
        //                           "Payment Details",
        //                           style: TextStyle(color: Colors.white),
        //                         ),
        //                         backgroundColor: Theme.of(context).primaryColor,
        //                       ),
        //                       body: Container(
        //                         color: Color(0xff272525),
        //                         child: Column(
        //                           mainAxisAlignment: MainAxisAlignment.start,
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 30),
        //                               child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceAround,
        //                                 children: [
        //                                   Text(
        //                                     "Cabbean Details",
        //                                     style: TextStyle(
        //                                         color: Theme.of(context)
        //                                             .primaryColor,
        //                                         fontSize: 18),
        //                                   ),
        //                                   Text(
        //                                     "Car No",
        //                                     style: TextStyle(
        //                                         color: Colors.white,
        //                                         fontSize: 18),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                             SizedBox(
        //                               height: 10,
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 35),
        //                               child: Text(
        //                                 "Ali Ahmad",
        //                                 style: TextStyle(color: Colors.white),
        //                               ),
        //                             ),
        //                             SizedBox(
        //                               height: 10,
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 35),
        //                               child: Text(
        //                                 "Customer Details",
        //                                 style: TextStyle(
        //                                     color:
        //                                         Theme.of(context).primaryColor,
        //                                     fontSize: 18),
        //                               ),
        //                             ),
        //                             SizedBox(
        //                               height: 10,
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 35),
        //                               child: Text(
        //                                 "Alina",
        //                                 style: TextStyle(color: Colors.white),
        //                               ),
        //                             ),
        //                             Divider(thickness: 1, color: Colors.white),
        //                             Column(
        //                               mainAxisAlignment:
        //                                   MainAxisAlignment.start,
        //                               crossAxisAlignment:
        //                                   CrossAxisAlignment.center,
        //                               children: [
        //                                 Padding(
        //                                   padding: const EdgeInsets.symmetric(
        //                                       horizontal: 30),
        //                                   child: Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                       Text(
        //                                         "Total Fare",
        //                                         style: TextStyle(
        //                                             color: Theme.of(context)
        //                                                 .primaryColor,
        //                                             fontSize: 18),
        //                                       ),
        //                                       Text(
        //                                         "300.0",
        //                                         textAlign: TextAlign.end,
        //                                         style: TextStyle(
        //                                             color: Colors.white,
        //                                             fontSize: 18),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ),
        //                                 SizedBox(
        //                                   height: 10,
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.symmetric(
        //                                       horizontal: 30),
        //                                   child: Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                       Text(
        //                                         "Discount",
        //                                         style: TextStyle(
        //                                             color: Theme.of(context)
        //                                                 .primaryColor,
        //                                             fontSize: 18),
        //                                       ),
        //                                       Text(
        //                                         "-30.0",
        //                                         textAlign: TextAlign.end,
        //                                         style: TextStyle(
        //                                             color: Colors.white,
        //                                             fontSize: 18),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ),
        //                                 SizedBox(
        //                                   height: 10,
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.symmetric(
        //                                       horizontal: 30),
        //                                   child: Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                       Text(
        //                                         "Stop Over",
        //                                         style: TextStyle(
        //                                             color: Theme.of(context)
        //                                                 .primaryColor,
        //                                             fontSize: 18),
        //                                       ),
        //                                       Text(
        //                                         "50.0",
        //                                         textAlign: TextAlign.center,
        //                                         style: TextStyle(
        //                                             color: Colors.white,
        //                                             fontSize: 18),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ),
        //                                 SizedBox(
        //                                   height: 10,
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.symmetric(
        //                                       horizontal: 30),
        //                                   child: Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                       Text(
        //                                         "Continued Ride",
        //                                         style: TextStyle(
        //                                             color: Theme.of(context)
        //                                                 .primaryColor,
        //                                             fontSize: 18),
        //                                       ),
        //                                       Text(
        //                                         "120.0",
        //                                         textAlign: TextAlign.start,
        //                                         style: TextStyle(
        //                                             color: Colors.white,
        //                                             fontSize: 18),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ),
        //                                 SizedBox(
        //                                   height: 10,
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.symmetric(
        //                                       horizontal: 30),
        //                                   child: Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.end,
        //                                     children: [
        //                                       Text(
        //                                         "Grand Total",
        //                                         style: TextStyle(
        //                                             color: Colors.white,
        //                                             fontSize: 18,
        //                                             fontWeight:
        //                                                 FontWeight.bold),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             left: 30),
        //                                         child: Text(
        //                                           "120.00",
        //                                           style: TextStyle(
        //                                               color: Colors.white,
        //                                               fontSize: 18),
        //                                         ),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ),
        //                               ],
        //                             ),
        //                             Divider(thickness: 1, color: Colors.white),
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 30),
        //                               child: Text(
        //                                 "Location",
        //                                 style: TextStyle(
        //                                     color:
        //                                         Theme.of(context).primaryColor,
        //                                     fontSize: 18),
        //                               ),
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 30),
        //                               child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Container(
        //                                     height: 15,
        //                                     width: 15,
        //                                     decoration: BoxDecoration(
        //                                         shape: BoxShape.circle,
        //                                         color: Theme.of(context)
        //                                             .primaryColor),
        //                                   ),
        //                                   Text("ShamsAbad,Metro Station",
        //                                       style: TextStyle(
        //                                           color: Colors.white)),
        //                                 ],
        //                               ),
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.only(
        //                                   top: 10, left: 25, right: 30),
        //                               child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Icon(
        //                                     Icons.location_on,
        //                                     color:
        //                                         Theme.of(context).primaryColor,
        //                                   ),
        //                                   Text("F9 Markaz Islamabad",
        //                                       style: TextStyle(
        //                                           color: Colors.white)),
        //                                 ],
        //                               ),
        //                             ),
        //                             SizedBox(
        //                               height: 20,
        //                             ),
        //                             Center(
        //                               child: SizedBox(
        //                                 width: sizeConfig!.width(0.62),
        //                                 height: 50,
        //                                 child: MySecondButton(
        //                                     // onTap: () => Navigator.push(
        //                                     //     context,
        //                                     //     MaterialPageRoute(
        //                                     //         builder: (context) =>
        //                                     //             Rating())),
        //                                     title: "How do you Rate Ali?",
        //                                     borderRadius:
        //                                         BorderRadius.circular(25.0),
        //                                     border: Border.all(
        //                                         width: 1, color: Colors.white)),
        //                               ),
        //                             ),
        //                             SizedBox(
        //                               height: 20,
        //                             ),
        //                             Row(
        //                               mainAxisAlignment:
        //                                   MainAxisAlignment.center,
        //                               children: [
        //                                 StatefulBuilder(builder:
        //                                     (BuildContext context,
        //                                         StateSetter setState) {
        //                                   return GestureDetector(
        //                                       onTap: () {
        //                                         setState(() {
        //                                           _oneBeenPressed =
        //                                               !_oneBeenPressed;
        //                                           // _hasBeenPressed = false;
        //                                           // _wasBeenPressed = false;
        //                                         });
        //                                       },
        //                                       child: _oneBeenPressed
        //                                           ? Icon(Icons.star,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                           : Icon(Icons.star_outline,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                       // Icon(
        //                                       //   Icons.star,
        //                                       //   size: 25,
        //                                       //   // color: _isBeenPressed
        //                                       //   //     ? Theme.of(context).primaryColor
        //                                       //   //     : Colors.white70,
        //                                       //   // // 3
        //                                       // ),
        //                                       );
        //                                 }),
        //                                 SizedBox(
        //                                   width: 10,
        //                                 ),
        //                                 StatefulBuilder(builder:
        //                                     (BuildContext context,
        //                                         StateSetter setState) {
        //                                   return GestureDetector(
        //                                       onTap: () {
        //                                         setState(() {
        //                                           _twoBeenPressed =
        //                                               !_twoBeenPressed;
        //                                           // _hasBeenPressed = false;
        //                                           // _wasBeenPressed = false;
        //                                         });
        //                                       },
        //                                       child: _twoBeenPressed
        //                                           ? Icon(Icons.star,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                           : Icon(Icons.star_outline,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                       // Icon(
        //                                       //   Icons.star,
        //                                       //   size: 25,
        //                                       //   // color: _isBeenPressed
        //                                       //   //     ? Theme.of(context).primaryColor
        //                                       //   //     : Colors.white70,
        //                                       //   // // 3
        //                                       // ),
        //                                       );
        //                                 }),
        //                                 SizedBox(
        //                                   width: 10,
        //                                 ),
        //                                 StatefulBuilder(builder:
        //                                     (BuildContext context,
        //                                         StateSetter setState) {
        //                                   return GestureDetector(
        //                                       onTap: () {
        //                                         setState(() {
        //                                           _threeBeenPressed =
        //                                               !_threeBeenPressed;
        //                                           // _hasBeenPressed = false;
        //                                           // _wasBeenPressed = false;
        //                                         });
        //                                       },
        //                                       child: _threeBeenPressed
        //                                           ? Icon(Icons.star,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                           : Icon(Icons.star_outline,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                       // Icon(
        //                                       //   Icons.star,
        //                                       //   size: 25,
        //                                       //   // color: _isBeenPressed
        //                                       //   //     ? Theme.of(context).primaryColor
        //                                       //   //     : Colors.white70,
        //                                       //   // // 3
        //                                       // ),
        //                                       );
        //                                 }),
        //                                 SizedBox(
        //                                   width: 10,
        //                                 ),
        //                                 StatefulBuilder(builder:
        //                                     (BuildContext context,
        //                                         StateSetter setState) {
        //                                   return GestureDetector(
        //                                       onTap: () {
        //                                         setState(() {
        //                                           _fourBeenPressed =
        //                                               !_fourBeenPressed;
        //                                           // _hasBeenPressed = false;
        //                                           // _wasBeenPressed = false;
        //                                         });
        //                                       },
        //                                       child: _fourBeenPressed
        //                                           ? Icon(Icons.star,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                           : Icon(Icons.star_outline,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                       // Icon(
        //                                       //   Icons.star,
        //                                       //   size: 25,
        //                                       //   // color: _isBeenPressed
        //                                       //   //     ? Theme.of(context).primaryColor
        //                                       //   //     : Colors.white70,
        //                                       //   // // 3
        //                                       // ),
        //                                       );
        //                                 }),
        //                                 SizedBox(
        //                                   width: 10,
        //                                 ),
        //                                 StatefulBuilder(builder:
        //                                     (BuildContext context,
        //                                         StateSetter setState) {
        //                                   return GestureDetector(
        //                                       onTap: () {
        //                                         setState(() {
        //                                           _fiveBeenPressed =
        //                                               !_fiveBeenPressed;
        //                                           // _hasBeenPressed = false;
        //                                           // _wasBeenPressed = false;
        //                                         });
        //                                       },
        //                                       child: _fiveBeenPressed
        //                                           ? Icon(Icons.star,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                           : Icon(Icons.star_outline,
        //                                               size: 25,
        //                                               color: Theme.of(context)
        //                                                   .primaryColor)
        //                                       // Icon(
        //                                       //   Icons.star,
        //                                       //   size: 25,
        //                                       //   // color: _isBeenPressed
        //                                       //   //     ? Theme.of(context).primaryColor
        //                                       //   //     : Colors.white70,
        //                                       //   // // 3
        //                                       // ),
        //                                       );
        //                                 }),
        //                               ],
        //                             ),
        //                             SizedBox(
        //                               height: 10,
        //                             ),
        //                             Center(
        //                               child: SizedBox(
        //                                 width: sizeConfig!.width(0.62),
        //                                 height: 40,
        //                                 child: MySecondButton(
        //                                     onTap: () => Navigator.push(
        //                                         context,
        //                                         MaterialPageRoute(
        //                                             builder: (context) =>
        //                                                 Rating())),
        //                                     title: "Done",
        //                                     borderRadius:
        //                                         BorderRadius.circular(25.0),
        //                                     border: Border.all(
        //                                         width: 1, color: Colors.white)),
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             );
        //           },
        //         ),
        //         title: "Payment Details",
        //         borderRadius: BorderRadius.circular(25.0),
        //       ),
        //     ))
        // ],
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 590,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  automaticallyImplyLeading: false,
                  title: Text(
                    "Payment Details",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                body: Container(
                  color: Color(0xff272525),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Cabbean Details",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Car No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          "Ali Ahmad",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          "Customer Details",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          "Ali",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(thickness: 1, color: Colors.white),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Fare",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18),
                                ),
                                Text(
                                  "300.0",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Discount",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18),
                                ),
                                Text(
                                  "-30.0",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Stop Over",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18),
                                ),
                                Text(
                                  "50.0",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Continued Ride",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18),
                                ),
                                Text(
                                  "120.0",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Grand Total",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "120.00",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1, color: Colors.white),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Location",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Text("ShamsAbad,Metro Station",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColor,
                            ),
                            Text("F9 Markaz Islamabad",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        "How do you Rate Ali?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _oneBeenPressed = !_oneBeenPressed;
                                    // _hasBeenPressed = false;
                                    // _wasBeenPressed = false;
                                  });
                                },
                                child: _oneBeenPressed
                                    ? Icon(Icons.star,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
                                    : Icon(Icons.star_outline,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
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
                              (BuildContext context, StateSetter setState) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _twoBeenPressed = !_twoBeenPressed;
                                    // _hasBeenPressed = false;
                                    // _wasBeenPressed = false;
                                  });
                                },
                                child: _twoBeenPressed
                                    ? Icon(Icons.star,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
                                    : Icon(Icons.star_outline,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
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
                              (BuildContext context, StateSetter setState) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _threeBeenPressed = !_threeBeenPressed;
                                    // _hasBeenPressed = false;
                                    // _wasBeenPressed = false;
                                  });
                                },
                                child: _threeBeenPressed
                                    ? Icon(Icons.star,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
                                    : Icon(Icons.star_outline,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
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
                              (BuildContext context, StateSetter setState) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _fourBeenPressed = !_fourBeenPressed;
                                    // _hasBeenPressed = false;
                                    // _wasBeenPressed = false;
                                  });
                                },
                                child: _fourBeenPressed
                                    ? Icon(Icons.star,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
                                    : Icon(Icons.star_outline,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
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
                              (BuildContext context, StateSetter setState) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _fiveBeenPressed = !_fiveBeenPressed;
                                    // _hasBeenPressed = false;
                                    // _wasBeenPressed = false;
                                  });
                                },
                                child: _fiveBeenPressed
                                    ? Icon(Icons.star,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
                                    : Icon(Icons.star_outline,
                                        size: 25,
                                        color: Theme.of(context).primaryColor)
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
                      Center(
                        child: SizedBox(
                          width: sizeConfig!.width(0.62),
                          height: 40,
                          child: MySecondButton(
                              // onTap: () => Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Rating())),
                              title: "Done",
                              borderRadius: BorderRadius.circular(25.0),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}


// SizedBox(
//                             height: 420,
//                             child: Scaffold(
//                               appBar: AppBar(
//                                 backgroundColor: Theme.of(context).primaryColor,
//                                 title: Text(
//                                   "Payment Details",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ),
//                               body: Container(
//                                 color: Color(0xff272525),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Cabbean Details",
//                                           style: TextStyle(
//                                               color: Theme.of(context)
//                                                   .primaryColor),
//                                         ),
//                                         Text(
//                                           "Car No",
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                     Text(
//                                       "Ali Ahmad",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                     Text(
//                                       "Customer Details",
//                                       style: TextStyle(
//                                           color:
//                                               Theme.of(context).primaryColor),
//                                     ),
//                                     Text(
//                                       "Alina",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                     Divider(thickness: 1, color: Colors.white),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Total Fare",
//                                           style: TextStyle(
//                                               color: Theme.of(context)
//                                                   .primaryColor),
//                                         ),
//                                         Text(
//                                           "300.0",
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Discount",
//                                           style: TextStyle(
//                                               color: Theme.of(context)
//                                                   .primaryColor),
//                                         ),
//                                         Text(
//                                           "-30.0",
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Stop Over",
//                                           style: TextStyle(
//                                               color: Theme.of(context)
//                                                   .primaryColor),
//                                         ),
//                                         Text(
//                                           "50.0",
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Continued Ride",
//                                           style: TextStyle(
//                                               color: Theme.of(context)
//                                                   .primaryColor),
//                                         ),
//                                         Text(
//                                           "120.00",
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Grand Total",
//                                           style: TextStyle(
//                                               color: Theme.of(context)
//                                                   .primaryColor),
//                                         ),
//                                         Text(
//                                           "120.00",
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                     Divider(thickness: 1, color: Colors.white),
//                                     Text(
//                                       "Location",
//                                       style: TextStyle(
//                                           color:
//                                               Theme.of(context).primaryColor),
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         Checkbox(
//                                           activeColor:
//                                               Theme.of(context).primaryColor,
//                                           checkColor:
//                                               Theme.of(context).primaryColor,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(20)),
//                                           value: isChecked,
//                                           onChanged: (bool? value) {
//                                             setState(() {
//                                               isChecked = value!;
//                                               onChecked = false;
//                                             });
//                                           },
//                                         ),
//                                         Text("ShamsAbad,Metro Station",
//                                             style:
//                                                 TextStyle(color: Colors.white)),
//                                         Icon(
//                                           Icons.add,
//                                           color: Colors.white,
//                                         )
//                                       ],
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         Icon(
//                                           Icons.location_on,
//                                           color: Colors.white,
//                                         ),
//                                         Text("F9 Markaz Islamabad",
//                                             style:
//                                                 TextStyle(color: Colors.white)),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 20),
//                                           child: Icon(
//                                             Icons.add,
//                                             color: Colors.white,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: sizeConfig!.width(0.82),
//                                       height: 50,
//                                       child: MySecondButton(
//                                         // onTap: () => _settingModalBottomSheet(context),
//                                         title: "How do you Rate Alina?",
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ),
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 _oneBeenPressed =
//                                                     !_oneBeenPressed;
//                                                 // _hasBeenPressed = false;
//                                                 // _wasBeenPressed = false;
//                                               });
//                                             },
//                                             child: _oneBeenPressed
//                                                 ? Icon(Icons.star,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                                 : Icon(Icons.star_outline,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                             // Icon(
//                                             //   Icons.star,
//                                             //   size: 25,
//                                             //   // color: _isBeenPressed
//                                             //   //     ? Theme.of(context).primaryColor
//                                             //   //     : Colors.white70,
//                                             //   // // 3
//                                             // ),
//                                             ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 _twoBeenPressed =
//                                                     !_twoBeenPressed;
//                                                 // _hasBeenPressed = false;
//                                                 // _wasBeenPressed = false;
//                                               });
//                                             },
//                                             child: _twoBeenPressed
//                                                 ? Icon(Icons.star,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                                 : Icon(Icons.star_outline,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                             // Icon(
//                                             //   Icons.star,
//                                             //   size: 25,
//                                             //   // color: _isBeenPressed
//                                             //   //     ? Theme.of(context).primaryColor
//                                             //   //     : Colors.white70,
//                                             //   // // 3
//                                             // ),
//                                             ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 _threeBeenPressed =
//                                                     !_threeBeenPressed;
//                                                 // _hasBeenPressed = false;
//                                                 // _wasBeenPressed = false;
//                                               });
//                                             },
//                                             child: _threeBeenPressed
//                                                 ? Icon(Icons.star,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                                 : Icon(Icons.star_outline,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                             // Icon(
//                                             //   Icons.star,
//                                             //   size: 25,
//                                             //   // color: _isBeenPressed
//                                             //   //     ? Theme.of(context).primaryColor
//                                             //   //     : Colors.white70,
//                                             //   // // 3
//                                             // ),
//                                             ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 _fourBeenPressed =
//                                                     !_fourBeenPressed;
//                                                 // _hasBeenPressed = false;
//                                                 // _wasBeenPressed = false;
//                                               });
//                                             },
//                                             child: _fourBeenPressed
//                                                 ? Icon(Icons.star,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                                 : Icon(Icons.star_outline,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                             // Icon(
//                                             //   Icons.star,
//                                             //   size: 25,
//                                             //   // color: _isBeenPressed
//                                             //   //     ? Theme.of(context).primaryColor
//                                             //   //     : Colors.white70,
//                                             //   // // 3
//                                             // ),
//                                             ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 _fiveBeenPressed =
//                                                     !_fiveBeenPressed;
//                                                 // _hasBeenPressed = false;
//                                                 // _wasBeenPressed = false;
//                                               });
//                                             },
//                                             child: _fiveBeenPressed
//                                                 ? Icon(Icons.star,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                                 : Icon(Icons.star_outline,
//                                                     size: 25,
//                                                     color: Theme.of(context)
//                                                         .primaryColor)
//                                             // Icon(
//                                             //   Icons.star,
//                                             //   size: 25,
//                                             //   // color: _isBeenPressed
//                                             //   //     ? Theme.of(context).primaryColor
//                                             //   //     : Colors.white70,
//                                             //   // // 3
//                                             // ),
//                                             ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),