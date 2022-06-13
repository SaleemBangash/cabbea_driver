// // import 'dart:js';

// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../drawer/request_history.dart';


// class DrawerPage extends StatefulWidget {
//   const DrawerPage({Key? key}) : super(key: key);

//   @override
//   State<DrawerPage> createState() => _DrawerPageState();
// }

// class _DrawerPageState extends State<DrawerPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         backgroundColor: Color(0xff272525),
//         child: ListView(
//             // Important: Remove any padding from the ListView.
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                   decoration: BoxDecoration(color: Color(0xff272525)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Image.asset(
//                             'assets/person1.png',
//                             width: 70.0,
//                             height: 70.0,
//                             fit: BoxFit.cover,
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Ali",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2!
//                                     .copyWith(
//                                         fontSize: 17,
//                                         color: Theme.of(context).primaryColor),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Icon(
//                                     Icons.star,
//                                     size: 15,
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                   Icon(
//                                     Icons.star,
//                                     size: 15,
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                   Icon(
//                                     Icons.star,
//                                     size: 15,
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                   Icon(
//                                     Icons.star,
//                                     size: 15,
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 5.0),
//                                     child: Text("(4.9)",
//                                         style: TextStyle(
//                                             fontSize: 14, color: Colors.white)),
//                                   )
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text("Cultus",
//                                   style: TextStyle(
//                                       fontSize: 14, color: Colors.white)),
//                             ],
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios,
//                             color: Theme.of(context).primaryColor,
//                           )
//                         ],
//                       ),
//                     ],
//                   )),
//               Divider(
//                 thickness: 1,
//                 color: Theme.of(context).primaryColor,
//               ),
//               listTile(
//                 icon: Icons.location_city_outlined,
//                 title: "My Account",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Profile())),
//               ),
//               listTile(
//                 icon: FontAwesomeIcons.globe,
//                 title: "Ride History",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => RequestHistory())),
//               ),
//               // listTile(
//               //   icon: Icons.settings,
//               //   title: "Safety Measures",
//               //   onTap: () => showDialog(
//               //     barrierDismissible: true,
//               //     // barrierColor: Theme.of(context).primaryColor,
//               //     context: context,
//               //     builder: (BuildContext context) {
//               //       return Expanded(
//               //         child: AlertDialog(
//               //           // insetPadding: EdgeInsets.only(bottom: 350),
//               //           shape: RoundedRectangleBorder(
//               //               borderRadius:
//               //                   BorderRadius.circular(15.0)), //this right here,
//               //           backgroundColor: Color(0xff272525),
//               //           content: SizedBox(
//               //             height: 120,
//               //             child: Column(
//               //               children: [
//               //                 SizedBox(
//               //                   height: 20,
//               //                 ),
//               //                 Row(
//               //                   children: [
//               //                     Icon(
//               //                       Icons.call,
//               //                       color: Theme.of(context).primaryColor,
//               //                     ),
//               //                     SizedBox(
//               //                       width: 20,
//               //                     ),
//               //                     Text(
//               //                       "Call to 15",
//               //                       style: TextStyle(
//               //                           color: Colors.white, fontSize: 18),
//               //                     )
//               //                   ],
//               //                 ),
//               //                 SizedBox(
//               //                   height: 10,
//               //                 ),
//               //                 Divider(
//               //                   color: Colors.white,
//               //                   thickness: 1,
//               //                 ),
//               //                 SizedBox(
//               //                   height: 10,
//               //                 ),
//               //                 Row(
//               //                   children: [
//               //                     Icon(
//               //                       Icons.location_on,
//               //                       color: Theme.of(context).primaryColor,
//               //                     ),
//               //                     SizedBox(
//               //                       width: 20,
//               //                     ),
//               //                     Text(
//               //                       "Share live Location",
//               //                       style: TextStyle(
//               //                           color: Colors.white, fontSize: 18),
//               //                     )
//               //                   ],
//               //                 ),
//               //               ],
//               //             ),
//               //           ),
//               //         ),
//               //       );
//               //     },
//               //   ),
//               // ),

//               // listTile(
//               //   icon: FontAwesomeIcons.person,
//               //   title: "Register",
//               //   onTap: () => Navigator.push(context,
//               //       MaterialPageRoute(builder: (context) => NewRegistration())),
//               // ),
//               listTile(
//                 icon: FontAwesomeIcons.envelope,
//                 title: "Inbox",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Dashboard())),
//               ),
//               listTile(
//                 icon: Icons.settings,
//                 title: "Help & Support",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Dashboard())),
//               ),
//               listTile(
//                 icon: Icons.help,
//                 title: "Share With Friends",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Dashboard())),
//               ),
//               listTile(
//                   icon: Icons.copy_outlined,
//                   title: "Terms And Condition",
//                   onTap: () => Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Dashboard()))),

//               listTile(
//                 icon: FontAwesomeIcons.creativeCommons,
//                 title: "In Ride Policy",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Dashboard())),
//               ),
//               // ListTile(
//               //   leading: Icon(FontAwesomeIcons.lock),
//               //   title: Text("Privacy Policy"),
//               //   onTap: () => Navigator.push(context,
//               //       MaterialPageRoute(builder: (context) => Dashboard())),
//               // ),
//               // listTile(
//               //   icon: Icons.settings,
//               //   title: "Setting",
//               //   onTap: () => Navigator.push(
//               //       context, MaterialPageRoute(builder: (context) => Settings())),
//               // ),
//               // listTile(
//               //   icon: Icons.person,
//               //   title: "Support",
//               //   onTap: () => Navigator.push(context,
//               //       MaterialPageRoute(builder: (context) => SupportPage())),
//               // ),
//               // listTile(
//               //   icon: Icons.logout,
//               //   title: "Log Out",
//               //   onTap: () => Navigator.push(
//               //       context, MaterialPageRoute(builder: (context) => HomePage())),
//               //),
//               SizedBox(
//                 width: 20,
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.facebook_outlined,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Icon(
//                       FontAwesomeIcons.instagram,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Icon(
//                       FontAwesomeIcons.twitter,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               )
//             ]));
//   }

//   listTile({required IconData icon, required String title, Function()? onTap}) {
//     return ListTile(
//       leading: Icon(
//         icon,
//         size: 25,
//         color: Theme.of(context).primaryColor,
//       ),
//       title: Text(title,
//           style: Theme.of(context)
//               .textTheme
//               .bodyText2!
//               .copyWith(color: Colors.white)),
//       onTap: onTap,
//     );
//   }
// }
