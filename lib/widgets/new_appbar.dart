// ignore_for_file: prefer_const_constructors, unused_element

import 'package:cabbea_driver/driver/driver_drawer.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';
import 'drawer.dart';

class MyNewAppBar extends StatefulWidget {
  // final Widget body;
  // final Widget? bottomNavigationBar;
  // final Widget? drawer;
  // final String title;
  // final Widget? drawer;

  const MyNewAppBar({
    // required this.body,
    Key? key,
    // this.bottomNavigationBar,
    // this.drawer,
    // this.title,
    // this.drawer,
  }) : super(key: key);

  @override
  State<MyNewAppBar> createState() => _MyNewAppBarState();
}

class _MyNewAppBarState extends State<MyNewAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          // title: Image.asset(
          //   "assets/images/purpleLogo.png",
          //   // height: 140,
          //   width: 170,
          // ),

          //  Text(title,
          //     style: Theme.of(context)
          //         .textTheme
          //         .bodyText1!
          //         .copyWith(color: Colors.black, fontSize: 25, shadows: [
          //       Shadow(
          //         offset: Offset(5.0, 1.0),
          //         blurRadius: 13.0,
          //         color: Color(0xffa73ce6),
          //       ),
          //     ])),
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/side_bar.png',
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //     Builder(builder: (BuildContext context) {
          //   return IconButton(
          //     icon: Icon(
          //       Icons.android,
          //       color: Colors.black,
          //     ),
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //   );
          // }),
          centerTitle: true,
          backgroundColor: Colors.white),
      // bottomNavigationBar: widget.bottomNavigationBar,
      // body: widget.body,
      drawer: DriverDrawer(),
    );
  }
}

// Drawer(
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text("Abhishek Mishra"),
//               accountEmail: Text("abhishekm977@gmail.com"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.orange,
//                 child: Text(
//                   "A",
//                   style: TextStyle(fontSize: 40.0),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home), title: Text("Home"),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings), title: Text("Settings"),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.contacts), title: Text("Contact Us"),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
// class DrawerPage extends StatefulWidget {
//   const DrawerPage({Key? key}) : super(key: key);

//   @override
//   _DrawerPageState createState() => _DrawerPageState();
// }

// class _DrawerPageState extends State<DrawerPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.white,
//       child: ListView(
//         // Important: Remove any padding from the ListView.
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             accountName: Text(
//               "Muhammad Estehsan",
//               style: Theme.of(context)
//                   .textTheme
//                   .bodyText1!
//                   .copyWith(fontWeight: FontWeight.bold),
//             ),
//             accountEmail:
//                 Text("Estehsan", style: Theme.of(context).textTheme.bodyText1),
//             currentAccountPicture: ClipRRect(
//               borderRadius: BorderRadius.circular(40.0),
//               child: Image.asset(
//                 'assets/images/person1.jpg',
//                 width: 40.0,
//                 height: 40.0,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             decoration: BoxDecoration(
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Text("54Following  199Followers"),
//           ),
//           listTile(
//             icon: Icons.home,
//             title: "Home",
//             onTap: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => HomePage())),
//           ),
//           listTile(
//             icon: Icons.person,
//             title: "Profile",
//             onTap: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => ProfilePage())),
//           ),
//           // ListTile(
//           //   leading: Icon(Icons.person),
//           //   title: Text("Profile"),
//           //   onTap: () {
//           //     Navigator.pop(context);
//           //   },
//           // ),
//           listTile(
//             icon: Icons.pages,
//             title: "My Pages",
//             onTap: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => MyPages())),
//           ),
//           listTile(
//             icon: Icons.pages,
//             title: "Create Pages",
//             onTap: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => CreatePage())),
//           ),
//           listTile(
//             icon: FontAwesomeIcons.solidCreditCard,
//             title: "Deposit",
//             onTap: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => CashDeposit())),
//           ),
//           listTile(
//             icon: FontAwesomeIcons.creditCard,
//             title: "WithDraw",
//             onTap: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => WithDrawCash())),
//           ),
//           listTile(
//             icon: FontAwesomeIcons.windowMaximize,
//             title: "Terms Of Services",
//             onTap: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => TermsServices())),
//           ),
//           listTile(
//             icon: FontAwesomeIcons.windowMaximize,
//             title: "Privacy Policy",
//             onTap: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => PrivacyPolicy())),
//           ),
//           listTile(
//             icon: Icons.settings,
//             title: "Setting",
//             onTap: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => Settings())),
//           ),
//           listTile(
//             icon: Icons.person,
//             title: "Support",
//             onTap: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => SupportPage())),
//           ),
//           listTile(
//             icon: Icons.logout,
//             title: "Log Out",
//             onTap: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => HomePage())),
//           ),
//         ],
//       ),
//       // drawer: drawer,
//     );
//   }

//   listTile({required IconData icon, required String title, Function()? onTap}) {
//     return ListTile(
//       leading: Icon(
//         icon,
//         size: 25,
//       ),
//       title: Text(title,
//           style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                 fontWeight: FontWeight.bold,
//               )),
//       onTap: onTap,
//     );
//   }

