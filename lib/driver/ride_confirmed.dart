// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import 'accept_offer_one.dart';
import 'end_ride.dart';

class RideConfirmed extends StatefulWidget {
  const RideConfirmed({Key? key}) : super(key: key);

  @override
  State<RideConfirmed> createState() => _RideConfirmedState();
}

class _RideConfirmedState extends State<RideConfirmed>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  double value = 0;

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller?.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => acceptOfferOne()));
        },
        child: Center(
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 10),
      //     child: GestureDetector(
      //       onTap: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => Dashboard()));
      //       },
      //       child: Center(
      //         child: Text(
      //           "Cancel",
      //           style: TextStyle(color: Theme.of(context).primaryColor),
      //         ),
      //       ),
      //     ),
      //   )
      // ],
      // bottom: PreferredSize(
      //   child: SizedBox(
      //     height: 10,
      //     width: 400,
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(35.0),
      //       child: LinearProgressIndicator(
      //         backgroundColor: Colors.white,
      //         color: Theme.of(context).primaryColor,
      //         value: _controller?.value,
      //       ),
      //     ),
      //   ),
      //   preferredSize: Size.fromHeight(20.0),
      // ),
      data: Text(''),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        Center(
          child: Positioned(
            top: sizeConfig!.height(0.23),
            left: sizeConfig!.width(0.30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SetDestintion())),
                    child: Image.asset("assets/cab_icon.png")),
                Text(
                  "Customer Have been Informed",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: sizeConfig!.height(0.06),
              width: sizeConfig!.width(0.45),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(width: 1, color: Colors.white),
                  color: Theme.of(context).primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.navigation, color: Colors.white),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Navigate", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff272525),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0))),
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/person.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Ali", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("G-7 Islamabad",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ShamsAbad Metro Station",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("PKR230", style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.whatsapp,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: sizeConfig!.width(0.82),
                  height: 50,
                  child: MySecondButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EndRide()));
                    },
                    border: Border.all(width: 1, color: Colors.white),
                    title: "I am Here",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
