// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/new_chat/rides.dart';
import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

import '../../main.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bar.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  bool _oneBeenPressed = false;
  bool isToggled = false;
  bool onToggled = false;
  bool ifToggled = false;
  void toggleSwitch(bool value) {
    if (onToggled == false) {
      setState(() {
        onToggled = true;
      });
      // print('Switch Button is ON');
    } else {
      setState(() {
        onToggled = false;
      });
      // print('Switch Button is OFF');
    }
  }

  void toggletwoSwitch(bool value) {
    if (isToggled == false) {
      setState(() {
        isToggled = true;
      });
      // print('Switch Button is ON');
    } else {
      setState(() {
        isToggled = false;
      });
      // print('Switch Button is OFF');
    }
  }

  void togglethreeSwitch(bool value) {
    if (ifToggled == false) {
      setState(() {
        ifToggled = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        ifToggled = false;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Rides()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'Options',
        style: TextStyle(color: Colors.white),
      ),
      body: Container(
          // margin: EdgeInsets.only(top: 20),
          color: Color(0xffEBEBEB),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Compact View",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Transform.scale(
                              scale: 1,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: onToggled,
                                activeColor: Theme.of(context).primaryColor,
                                activeTrackColor:
                                    Theme.of(context).primaryColor,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Sound Notifications",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Transform.scale(
                              scale: 1,
                              child: Switch(
                                onChanged: toggletwoSwitch,
                                value: isToggled,
                                activeColor: Theme.of(context).primaryColor,
                                activeTrackColor:
                                    Theme.of(context).primaryColor,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.mode_night_outlined),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Night Mode",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Transform.scale(
                              scale: 1,
                              child: Switch(
                                onChanged: togglethreeSwitch,
                                value: ifToggled,
                                activeColor: Theme.of(context).primaryColor,
                                activeTrackColor:
                                    Theme.of(context).primaryColor,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
