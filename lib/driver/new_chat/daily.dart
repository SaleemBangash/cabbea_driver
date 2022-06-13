// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';
import '../main_screen_online.dart';

// import 'dashboard.dart';
// import 'set_destination.dart';

class Daily extends StatefulWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  State<Daily> createState() => _DailyState();
}

class _DailyState extends State<Daily> {
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
        'Daily',
        style: TextStyle(color: Colors.white),
      ),
      body: Container(
          // margin: EdgeInsets.only(top: 20),
          color: Color(0xffEBEBEB),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "7Feb",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "550 PKR",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 170,
                      width: 330,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("04:00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith()),
                                Text("Completed",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: Colors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: Center(
                                    child: Text("A",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Street 27 880 (Islamabad, G-9)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(
                                    child: Text("B",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Tippu Sultan Rd (Islamabad, I-9)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PKR250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      height: 170,
                      width: 330,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("09:00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith()),
                                Text("Completed",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: Colors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: Center(
                                    child: Text("A",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Street 27 880 (Islamabad, G-9)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(
                                    child: Text("B",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Tippu Sultan Rd (Islamabad, I-9)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PKR300",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          )),
    );
  }
}








































































// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:passenger/driver/main_screen_online.dart';
// import 'package:passenger/screens/dashboard.dart';
// import 'package:passenger/screens/registration_screen.dart';
// import 'package:passenger/widgets/app_bar.dart';

// import '../../main.dart';
// import '../../screens/rating.dart';
// import '../../widgets/second_button.dart';

// // import 'dashboard.dart';
// // import 'set_destination.dart';

// class Daily extends StatefulWidget {
//   const Daily({Key? key}) : super(key: key);

//   @override
//   State<Daily> createState() => _DailyState();
// }

// class _DailyState extends State<Daily> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 9, 2, 33),
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => MainScreenOnline()));
//             }
//             //onPressed: () => Navigator.of(context).pop(),
//             ),
//         title: Text(
//           'Post Manage',
//           style: TextStyle(color: Colors.white, fontSize: 17),
//         ),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(25.0),
//                 bottomRight: Radius.circular(25.0))),
//       ),
//       body: Container(
//           // margin: EdgeInsets.only(top: 20),
//           color: Color(0xffEBEBEB),
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 30),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Container(
//                           height: 35,
//                           width: sizeConfig!.width(0.40),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5.0),
//                               color: Colors.grey),
//                           child: Center(
//                             child: Text(
//                               "Info",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 15),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           height: 35,
//                           width: sizeConfig!.width(0.40),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5.0),
//                               color: Color.fromARGB(255, 9, 2, 33)),
//                           child: Center(
//                             child: Text(
//                               "Interesting",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 15),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     height: 160,
//                     width: 370,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: Stack(children: [
//                                 Image.asset(
//                                   'assets/person_2.png',
//                                   width: 70.0,
//                                   height: 70.0,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 Positioned(
//                                     top: 55,
//                                     left: sizeConfig!.width(0.11),
//                                     child: Container(
//                                       width: 15,
//                                       height: 15,
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.green),
//                                     )),
//                               ]),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Text(
//                                         "Lora Abarbanel Hoswing",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(
//                                         width: 20,
//                                       ),
//                                       Icon(FontAwesomeIcons.bell,
//                                           color: Color.fromARGB(255, 9, 2, 33)),
//                                     ],
//                                   ),
//                                   Text("Today 21:32", style: TextStyle(
//                                             color: Colors.grey,
//                                            ),),
//                                   Text("How Are You?")
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                           child: Divider(
//                             thickness: 1,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Text(
//                                 "My Offer Is:",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "Include 17% Tax",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       "\$ 2,400",
//                                       style: TextStyle(
//                                           color: Colors.green,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: 160,
//                     width: 370,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: Stack(children: [
//                                 Image.asset(
//                                   'assets/person1.png',
//                                   width: 70.0,
//                                   height: 70.0,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 Positioned(
//                                     top: 55,
//                                     left: sizeConfig!.width(0.11),
//                                     child: Container(
//                                       width: 15,
//                                       height: 15,
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.green),
//                                     )),
//                               ]),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Text(
//                                         "Lora Abarbanel Hoswing",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(
//                                         width: 20,
//                                       ),
//                                       Icon(FontAwesomeIcons.bell),
//                                     ],
//                                   ),
//                                   Text("Today 21:32", style: TextStyle(
//                                             color: Colors.grey,
//                                            ),),
//                                   Text("How Are You?")
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: Divider(
//                             thickness: 1,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Text("My Offer Is:",
//                                   style:
//                                       TextStyle(fontWeight: FontWeight.bold)),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "No Tax, I'm Tax Exempt",
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       "\$ 1,200",
//                                       style: TextStyle(
//                                           color: Colors.green,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     height: 160,
//                     width: 370,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: Stack(children: [
//                                 Image.asset(
//                                   'assets/person_2.png',
//                                   width: 70.0,
//                                   height: 70.0,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 Positioned(
//                                     top: 55,
//                                     left: sizeConfig!.width(0.11),
//                                     child: Container(
//                                       width: 15,
//                                       height: 15,
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.green),
//                                     )),
//                               ]),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Text(
//                                         "Lora Abarbanel Hoswing",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(
//                                         width: 20,
//                                       ),
//                                       Icon(FontAwesomeIcons.bell),
//                                     ],
//                                   ),
//                                   Text("Today 21:32", style: TextStyle(
//                                             color: Colors.grey,
                                           
//                                             ),),
//                                   Text("How Are You?")
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: Divider(
//                             thickness: 1,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Text("My Offer Is:",
//                                   style:
//                                       TextStyle(fontWeight: FontWeight.bold)),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "Include 17% Tax",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       "\$ 2,400",
//                                       style: TextStyle(
//                                           color: Colors.green,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   // Container(
//                   //   height: 160,
//                   //   width: 340,
//                   //   decoration: BoxDecoration(
//                   //       color: Colors.white,
//                   //       borderRadius: BorderRadius.circular(10.0)),
//                   //   child: Column(
//                   //     children: [
//                   //       Row(
//                   //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   //         children: [
//                   //           Padding(
//                   //             padding: const EdgeInsets.only(top: 10),
//                   //             child: Stack(children: [
//                   //               Image.asset(
//                   //                 'assets/person_2.png',
//                   //                 width: 70.0,
//                   //                 height: 70.0,
//                   //                 fit: BoxFit.cover,
//                   //               ),
//                   //               Positioned(
//                   //                   top: 55,
//                   //                   left: sizeConfig!.width(0.11),
//                   //                   child: Container(
//                   //                     width: 15,
//                   //                     height: 15,
//                   //                     decoration: BoxDecoration(
//                   //                         shape: BoxShape.circle,
//                   //                         color: Colors.green),
//                   //                   )),
//                   //             ]),
//                   //           ),
//                   //           Padding(
//                   //             padding: const EdgeInsets.only(top: 20),
//                   //             child: Column(
//                   //               crossAxisAlignment: CrossAxisAlignment.start,
//                   //               children: [
//                   //                 Row(
//                   //                   children: [
//                   //                     Text(
//                   //                       "Lora Abarbanel Hoswing",
//                   //                       style: TextStyle(
//                   //                           color: Colors.black,
//                   //                           fontWeight: FontWeight.bold,
//                   //                           fontSize: 15),
//                   //                     ),
//                   //                     SizedBox(
//                   //                       width: 20,
//                   //                     ),
//                   //                     Icon(Icons.alarm_on),
//                   //                   ],
//                   //                 ),
//                   //                 Text("Today 21:32"),
//                   //                 Text("How Are You?")
//                   //               ],
//                   //             ),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //       Padding(
//                   //         padding: const EdgeInsets.symmetric(horizontal: 20),
//                   //         child: Divider(
//                   //           thickness: 1,
//                   //           color: Colors.grey,
//                   //         ),
//                   //       ),
//                   //       Column(
//                   //         mainAxisAlignment: MainAxisAlignment.center,
//                   //         crossAxisAlignment: CrossAxisAlignment.start,
//                   //         children: [
//                   //           Padding(
//                   //             padding:
//                   //                 const EdgeInsets.symmetric(horizontal: 20),
//                   //             child: Text(
//                   //               "My Offer Is:",
//                   //               style: TextStyle(fontWeight: FontWeight.bold),
//                   //             ),
//                   //           ),
//                   //           Padding(
//                   //             padding:
//                   //                 const EdgeInsets.symmetric(horizontal: 20),
//                   //             child: Row(
//                   //               mainAxisAlignment:
//                   //                   MainAxisAlignment.spaceBetween,
//                   //               children: [
//                   //                 Text(
//                   //                   "Include 17% Tax",
//                   //                   style: TextStyle(
//                   //                       fontWeight: FontWeight.bold),
//                   //                 ),
//                   //                 Padding(
//                   //                   padding: const EdgeInsets.all(8.0),
//                   //                   child: Text(
//                   //                     "\$ 900",
//                   //                     style: TextStyle(
//                   //                         color: Colors.green,
//                   //                         fontSize: 17,
//                   //                         fontWeight: FontWeight.bold),
//                   //                   ),
//                   //                 ),
//                   //               ],
//                   //             ),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }
