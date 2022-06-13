// import 'dart:js';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cabbea_driver/driver/registration/driver_registration_screen.dart';
import 'package:cabbea_driver/driver/settings.dart';
import 'package:cabbea_driver/driver/settings_cabbean.dart';
import 'package:cabbea_driver/driver/start_screen.dart';
import 'package:cabbea_driver/driver/subscription.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import 'chat.dart';
import 'driver_payment.dart';
import 'driver_profile.dart';
import 'driver_request_history.dart';

class DriverDrawer extends StatefulWidget {
  const DriverDrawer({Key? key}) : super(key: key);

  @override
  State<DriverDrawer> createState() => _DriverDrawerState();
}

class _DriverDrawerState extends State<DriverDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xff272525),
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff272525)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/person1.png',
                            width: 70.0,
                            height: 70.0,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ali",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 17,
                                        color: Theme.of(context).primaryColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text("(4.9)",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Cultus",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    ],
                  )),
              Divider(
                thickness: 1,
                color: Theme.of(context).primaryColor,
              ),
              listTile(
                icon: Icons.account_box_rounded,
                title: "My Account",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriverRequestHistory())),
              ),
              listTile(
                icon: Icons.account_box_rounded,
                title: "My plan",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Subscription())),
              ),
              // DriverDrawerList(
              //     assetName: "assets/pro.png", data: "Get Subscription"),
              // DrawerList(assetName: "assets/pro.png", data: "Get Subscription"),
              listTile(
                icon: FontAwesomeIcons.globe,
                title: "Online Registration",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverProfile())),
              ),

              listTile(
                icon: Icons.location_on,
                title: "Add Destinaion",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverPayment())),
              ),
              listTile(
                icon: FontAwesomeIcons.envelope,
                title: "Inbox",
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Chat())),
              ),
              listTile(
                icon: Icons.settings,
                title: "Settings",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings())),
              ),
              listTile(
                icon: Icons.share,
                title: "Share With Friends",
                // onTap: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => DriverRegistrationScreen())),
              ),
              listTile(
                icon: Icons.help,
                title: "Help And Support",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CabbeanSettings())),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                thickness: 1,
              ),

              SizedBox(
                width: 20,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                    width: sizeConfig!.width(0.52),
                    height: 40,
                    child: MySecondButton(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartScreen()));
                      }),
                      title: "Switch to Passenger",
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ))
            ]));
  }

  listTile({required IconData icon, required String title, Function()? onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.white)),
      onTap: onTap,
    );
  }
}
