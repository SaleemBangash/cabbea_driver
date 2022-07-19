// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:html';

import 'package:cabbea_driver/driver/new_chat/rides.dart';
import 'package:flutter/material.dart';

import 'package:simple_shadow/simple_shadow.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../main.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/second_button.dart';
import '../../widgets/text_field.dart';
import '../main_screen_online.dart';
import '../registration/driver_reg_otp.dart';

class SendEmail extends StatefulWidget {
  const SendEmail({Key? key}) : super(key: key);

  @override
  State<SendEmail> createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Rides()));
          }),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      backgroundColor: Color(0xff272525),
      data: Text("Send Email", style: TextStyle(color: Colors.white)),
      body: Stack(
        children: [
          Container(
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
                        Color.fromARGB(255, 246, 225, 225).withOpacity(0.6),
                        BlendMode.dstATop))),
          ),
          // Positioned(
          //   top: 100,
          //   left: 150,
          //   child: Text("Register".toUpperCase(),
          //       style: TextStyle(color: Colors.white, fontSize: 25)),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Enter Email",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: sizeConfig!.width(0.650),
                    child: MyTextField(
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: sizeConfig!.height(0.06),
                      width: sizeConfig!.width(0.650),
                      child: MySecondButton(
                        border: Border.all(width: 2, color: Colors.white),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreenOnline())),
                        title: "Send",
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
