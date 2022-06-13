// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../main.dart';
import '../../utils/size_config.dart';
import 'driver_start_screen.dart';

class DriverSplashScreen extends StatefulWidget {
  const DriverSplashScreen({Key? key}) : super(key: key);

  @override
  State<DriverSplashScreen> createState() => _DriverSplashScreenState();
}

class _DriverSplashScreenState extends State<DriverSplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  double value = 0;
  @override
  // void initState() {
  //   _load();
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller?.repeat();
    _load();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SimpleShadow(
          opacity: .95, // Default: 0.5
          color: Colors.black, // Default: Black
          offset: Offset(15, 15), // Default: Offset(2, 2)
          sigma: 9, // Default: 2
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                    image: AssetImage("assets/driver.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 340),
          child: Center(
            child: Positioned(
              bottom: sizeConfig!.height(0.3),
              left: sizeConfig!.height(0.10),
              child: Column(
                children: [
                  Image.asset("assets/cabbea.png"),
                  Text(
                    "Fare for Everyone",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(20),
                  //   child: LinearProgressIndicator(
                  //     backgroundColor: Colors.grey,
                  //     color: Colors.green,
                  //     minHeight: 5,
                  //     value: value,
                  //   ),
                  // ),
                  SizedBox(
                    height: 90,
                  ),
                  SizedBox(
                    height: 10,
                    width: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Theme.of(context).primaryColor,
                        value: _controller?.value,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Loading",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  _load() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => DriverStartScreen()));
    });
  }

  // void downloadData() {
  //   new Timer.periodic(Duration(seconds: 1), (Timer timer) {
  //     setState(() {
  //       if (value == 1) {
  //         timer.cancel();
  //       } else {
  //         value = value + 0.1;
  //       }
  //     });
  //   });
  // }
}
