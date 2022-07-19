// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';
import '../../widgets/app_bar.dart';
import '../main_screen_online.dart';
import 'options.dart';

// import 'dashboard.dart';
// import 'set_destination.dart';

class Monthly extends StatefulWidget {
  const Monthly({Key? key}) : super(key: key);

  @override
  State<Monthly> createState() => _MonthlyState();
}

class _MonthlyState extends State<Monthly> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainScreenOnline()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'Monthly',
        style: TextStyle(color: Colors.white),
      ),
      // actions: [
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => Options()));
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.only(right: 10),
      //       child: Center(
      //         child: Text(
      //           'Options',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //     ),
      //   ),
      // ],
      body: SingleChildScrollView(
        child: Container(
            // margin: EdgeInsets.only(top: 20),
            color: Color(0xff272525),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.car,
                                color: Color.fromARGB(255, 252, 250, 129),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dec 07, 2020 03:07PM",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Colors.white)),
                                      SizedBox(
                                        height: 05,
                                      ),
                                      Text("Bike. #000033",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "Melur Road, Karpaga Nagar, Madurai,\nTamil Nadu 625007, India",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text("\$80",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.car,
                                color: Color.fromARGB(255, 252, 250, 129),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dec 07, 2020 03:07PM",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Colors.white)),
                                      SizedBox(
                                        height: 05,
                                      ),
                                      Text("Bike. #000034",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "Melur Road, Karpaga Nagar, Madurai,\nTamil Nadu 625007, India",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text("\$70.2",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.car,
                                color: Color.fromARGB(255, 252, 250, 129),
                              ),
                              SizedBox(width: 5),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dec 07, 2020 03:07PM",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Colors.white)),
                                      SizedBox(
                                        height: 05,
                                      ),
                                      Text("Bike. #",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "Vishnu Complex, 80 feet Rd, Vaigai\nColony Sathamanglam Tamil\nNadu 625007, India",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text("\$75.2",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.car,
                                color: Color.fromARGB(255, 252, 250, 129),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dec 07, 2020 03:07PM",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Colors.white)),
                                      SizedBox(
                                        height: 05,
                                      ),
                                      Text("Bike. #000034",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text("\$80",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.car,
                                color: Color.fromARGB(255, 252, 250, 129),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dec 07, 2020 03:07PM",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Colors.white)),
                                      SizedBox(
                                        height: 05,
                                      ),
                                      Text("Bike. #000034",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red),
                                            ),
                                            SizedBox(
                                              width: 05,
                                            ),
                                            Text(
                                                "3/248-A, Surashtrapunam, Angel Nagar,\nVandur, Madurai, Tamil Nadu 625020,\nIndia",
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text("\$80",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // GestureDetector(
                    //   onTap: () => showDialog(
                    //     barrierDismissible: true,
                    //     // barrierColor: Theme.of(context).primaryColor,
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return Expanded(
                    //         child: AlertDialog(
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(
                    //                   15.0)), //this right here,
                    //           backgroundColor: Color(0xff272525),
                    //           content: SizedBox(
                    //             height: 120,
                    //             child: Column(
                    //               children: [
                    //                 Align(
                    //                   alignment: Alignment.topRight,
                    //                   child: GestureDetector(
                    //                     onTap: () => Navigator.pop(context),
                    //                     child: Container(
                    //                         height: 20,
                    //                         width: 20,
                    //                         decoration: BoxDecoration(
                    //                             shape: BoxShape.circle,
                    //                             color: Colors.white),
                    //                         child: Center(
                    //                           child: Icon(
                    //                             Icons.close,
                    //                             size: 20,
                    //                             color: Theme.of(context)
                    //                                 .primaryColor,
                    //                           ),
                    //                         )),
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 20,
                    //                 ),
                    //                 GestureDetector(
                    //                   onTap: () => showDialog(
                    //                     barrierDismissible: true,
                    //                     // barrierColor: Theme.of(context).primaryColor,
                    //                     context: context,
                    //                     builder: (BuildContext context) {
                    //                       return Expanded(
                    //                         child: AlertDialog(
                    //                           shape: RoundedRectangleBorder(
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       15.0)), //this right here,
                    //                           backgroundColor:
                    //                               Color(0xff272525),
                    //                           content: SizedBox(
                    //                             height: 420,
                    //                             width: 600,
                    //                             child: Column(
                    //                               mainAxisAlignment:
                    //                                   MainAxisAlignment.center,
                    //                               crossAxisAlignment:
                    //                                   CrossAxisAlignment.start,
                    //                               children: [
                    //                                 Text(
                    //                                     "Why do you want to Cancel the Ride?",
                    //                                     style: TextStyle(
                    //                                         fontSize: 14,
                    //                                         color:
                    //                                             Colors.white)),
                    //                                 SizedBox(
                    //                                   height: 10,
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       );
                    //                     },
                    //                   ),
                    //                   child: Container(
                    //                       height: 50,
                    //                       width: sizeConfig!.width(0.82),
                    //                       decoration: BoxDecoration(
                    //                           border: Border.all(
                    //                               width: 2,
                    //                               color: Colors.white),
                    //                           borderRadius:
                    //                               BorderRadius.circular(5.0),
                    //                           color: Theme.of(context)
                    //                               .primaryColor),
                    //                       child: Center(
                    //                           child: Text("Cancel the Ride",
                    //                               style: TextStyle(
                    //                                   fontSize: 20,
                    //                                   color: Colors.white)))),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    //   child: Text("Cance Ride",
                    //       textAlign: TextAlign.end,
                    //       style: TextStyle(fontSize: 18, color: Colors.white)),
                    // ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
