// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/main_screen_online.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';

// import '../widgets/app_bar.dart';
// import '../widgets/second_button.dart';
import '../../main.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/second_button.dart';
import 'driver_registration.dart';
import 'driver_registration_screen.dart';

class DriverRegistrationOtp extends StatefulWidget {
  const DriverRegistrationOtp({Key? key}) : super(key: key);

  @override
  State<DriverRegistrationOtp> createState() => _DriverRegistrationOtpState();
}

class _DriverRegistrationOtpState extends State<DriverRegistrationOtp>
    with TickerProviderStateMixin {
  int _counter = 0;
  late AnimationController _controller;
  int levelClock = 120;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DriverRegistrationScreen()));
          }),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      backgroundColor: Color(0xff272525),
      data: Text("Register", style: TextStyle(color: Colors.white)),
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
                        Color.fromARGB(255, 246, 225, 225).withOpacity(0.2),
                        BlendMode.dstATop))),
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("OTP Verification",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30,
                ),
                Text("Enter OTP Sent to +12345678",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OTPTextField(
                    otpFieldStyle: OtpFieldStyle(
                        backgroundColor: Colors.white,
                        borderColor: Colors.white),
                    outlineBorderRadius: 12,
                    length: 4,

                    width: MediaQuery.of(context).size.width,
                    fieldWidth: sizeConfig!.width(0.15),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.box,
                    // onCompleted: (pin) {
                    //   print("Completed: " + pin);
                    // },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Countdown(
                      animation: StepTween(
                        begin: levelClock, // THIS IS A USER ENTERED NUMBER
                        end: 0,
                      ).animate(_controller),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: MySecondButton(
                      border: Border.all(width: 1, color: Colors.white),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreenOnline())),
                      title: "Verify",
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    print('animation.value  ${animation.value} ');
    print('inMinutes ${clockTimer.inMinutes.toString()}');
    print('inSeconds ${clockTimer.inSeconds.toString()}');
    print(
        'inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}
