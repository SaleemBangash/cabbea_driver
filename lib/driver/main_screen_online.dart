// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/new_chat/ride_history.dart';
import 'package:cabbea_driver/driver/subscription.dart';
import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

import '../main.dart';
import '../utils/size_config.dart';
import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import 'accept_offer.dart';
import 'driver_drawer.dart';
import 'driver_rating.dart';
import 'driver_ratings.dart';
import 'main_screen_offline.dart';
import 'new_chat/daily.dart';
import 'new_chat/monthly.dart';
import 'new_chat/rides.dart';
import 'new_chat/weekly.dart';

class MainScreenOnline extends StatefulWidget {
  const MainScreenOnline({Key? key}) : super(key: key);

  @override
  State<MainScreenOnline> createState() => _MainScreenOnlineState();
}

class _MainScreenOnlineState extends State<MainScreenOnline> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  bool _oneBeenPressed = false;
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
      body: isToggled
          ? SingleChildScrollView(
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(child: Icon(Icons.person)),
                                ),
                                SizedBox(height: 5),
                                Text("Raja"),
                                SizedBox(height: 5),
                                Text("1 min"),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Street 69 H 987(G-10,G 10/4)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("G-10 Markaz (G 20 markaz G-10 Islamabad",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("PKR250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(child: Icon(Icons.person)),
                                ),
                                SizedBox(height: 5),
                                Text("Raja"),
                                SizedBox(height: 5),
                                Text("1 min"),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Street 69 H 987(G-10,G 10/4)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("G-10 Markaz (G 20 markaz G-10 Islamabad",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("PKR250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(child: Icon(Icons.person)),
                                ),
                                SizedBox(height: 5),
                                Text("Raja"),
                                SizedBox(height: 5),
                                Text("1 min"),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Street 69 H 987(G-10,G 10/4)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("G-10 Markaz (G 20 markaz G-10 Islamabad",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("PKR250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(child: Icon(Icons.person)),
                                ),
                                SizedBox(height: 5),
                                Text("Raja"),
                                SizedBox(height: 5),
                                Text("1 min"),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Street 69 H 987(G-10,G 10/4)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("G-10 Markaz (G 20 markaz G-10 Islamabad",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("PKR250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(child: Icon(Icons.person)),
                                ),
                                SizedBox(height: 5),
                                Text("Raja"),
                                SizedBox(height: 5),
                                Text("1 min"),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Street 69 H 987(G-10,G 10/4)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("G-10 Markaz (G 20 markaz G-10 Islamabad",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 16)),
                                SizedBox(height: 5),
                                Text("PKR250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: SizedBox(
                            width: sizeConfig!.width(0.52),
                            height: 40,
                            child: MySecondButton(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AccepDriverOffer()));
                              }),
                              title: "Next",
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            )
          : Center(
              child: Container(
                child: Image.asset("assets/no_rides.png"),
              ),
            ),
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
            label: "Home",
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreenOnline())),
                child: Image.asset("assets/my_rides.png")),
          ),
          BottomNavigationBarItem(
            label: "My Rides",
            backgroundColor: Colors.white,
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RidesHistory())),
                child: Image.asset("assets/my_earnings.png")),
          ),
          BottomNavigationBarItem(
            label: "MyRatings",
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverRating())),
                child: Image.asset("assets/my_ratings.png")),
          )
        ],
      ),
    );
  }
}
