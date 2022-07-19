// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:cabbea_driver/driver/registration/driver_registration_screen.dart';
import 'package:flutter/material.dart';

import 'package:simple_shadow/simple_shadow.dart';

import '../../main.dart';
import '../../utils/size_config.dart';
import '../../widgets/second_button.dart';

class DriverStartScreen extends StatefulWidget {
  const DriverStartScreen({Key? key}) : super(key: key);

  @override
  State<DriverStartScreen> createState() => _DriverStartScreenState();
}

class _DriverStartScreenState extends State<DriverStartScreen> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
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
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black,
                //     spreadRadius: 3,
                //     blurRadius: 1,
                //     offset: Offset(1, 1), // changes position of shadow
                //   ),
                // ],
                image: DecorationImage(
              image: AssetImage("assets/cabbean.jpeg"),
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(
              //     Colors.black.withOpacity(0.2), BlendMode.dstATop)
            )),
          ),
        ),
        Positioned(
          bottom: sizeConfig!.height(0.3),
          left: sizeConfig!.height(0.10),
          child: Column(
            children: [
              Image.asset("assets/logo1.png", height: 250, width: 250),
            ],
          ),
        ),
        Positioned(
          bottom: sizeConfig!.height(0.029),
          left: sizeConfig!.width(0.10),
          child: Center(
            child: SizedBox(
              width: sizeConfig!.width(0.82),
              height: 50,
              child: MySecondButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriverRegistrationScreen())),
                title: "Let's Start",
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(width: 1, color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
