// ignore_for_file: prefer_const_constructors

import 'package:cabbea_driver/driver/ride_confirmed.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/app_bar.dart';
import 'accept_offer.dart';
import 'google_map/google_map_page.dart';

class acceptOfferOne extends StatefulWidget {
  const acceptOfferOne({Key? key}) : super(key: key);

  @override
  State<acceptOfferOne> createState() => _acceptOfferOneState();
}

class _acceptOfferOneState extends State<acceptOfferOne>
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
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccepDriverOffer()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => Dashboard()));
            // },
            child: Center(
              child: Text(
                "Cancel",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        )
      ],
      bottom: PreferredSize(
        child: SizedBox(
          height: 10,
          width: 400,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              color: Theme.of(context).primaryColor,
              value: _controller?.value,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(20.0),
      ),
      data: Text(''),
      body: Stack(children: [
        MapOne(),
        // Container(
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //   image: AssetImage("assets/map.png"),
        //   fit: BoxFit.cover,
        // ))),
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RideConfirmed())),
                    child: Image.asset("assets/cab_icon.png")),
                Text(
                  "Your Offer is sent to the customer\n Please wait for the reply",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
