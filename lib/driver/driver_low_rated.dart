// ignore_for_file: prefer_const_constructors

import 'package:cabbea_driver/driver/driver_ratings.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'driver_rating.dart';
import 'main_screen_online.dart';

class DriverLowRated extends StatefulWidget {
  const DriverLowRated({Key? key}) : super(key: key);

  @override
  State<DriverLowRated> createState() => _DriverLowRatedState();
}

class _DriverLowRatedState extends State<DriverLowRated> {
  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  bool eChecked = false;
  bool fChecked = false;
  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff272525),
          leading: IconButton(
              icon:
                  Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverRating()));
              }
              //onPressed: () => Navigator.of(context).pop(),
              ),
        ),
        backgroundColor: Color(0xff272525),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Give a Rating",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/person_2.png",
                  height: 80,
                  width: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _oneBeenPressed = !_oneBeenPressed;
                            // _hasBeenPressed = false;
                            // _wasBeenPressed = false;
                          });
                        },
                        child: _oneBeenPressed
                            ? Icon(Icons.star,
                                size: 25, color: Theme.of(context).primaryColor)
                            : Icon(Icons.star_outline,
                                size: 25, color: Theme.of(context).primaryColor)
                        // Icon(
                        //   Icons.star,
                        //   size: 25,
                        //   // color: _isBeenPressed
                        //   //     ? Theme.of(context).primaryColor
                        //   //     : Colors.white70,
                        //   // // 3
                        // ),
                        ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _twoBeenPressed = !_twoBeenPressed;
                            // _hasBeenPressed = false;
                            // _wasBeenPressed = false;
                          });
                        },
                        child: _twoBeenPressed
                            ? Icon(Icons.star,
                                size: 25, color: Theme.of(context).primaryColor)
                            : Icon(Icons.star_outline,
                                size: 25, color: Theme.of(context).primaryColor)
                        // Icon(
                        //   Icons.star,
                        //   size: 25,
                        //   // color: _isBeenPressed
                        //   //     ? Theme.of(context).primaryColor
                        //   //     : Colors.white70,
                        //   // // 3
                        // ),
                        ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _threeBeenPressed = !_threeBeenPressed;
                            // _hasBeenPressed = false;
                            // _wasBeenPressed = false;
                          });
                        },
                        child: _threeBeenPressed
                            ? Icon(Icons.star,
                                size: 25, color: Theme.of(context).primaryColor)
                            : Icon(Icons.star_outline,
                                size: 25, color: Theme.of(context).primaryColor)
                        // Icon(
                        //   Icons.star,
                        //   size: 25,
                        //   // color: _isBeenPressed
                        //   //     ? Theme.of(context).primaryColor
                        //   //     : Colors.white70,
                        //   // // 3
                        // ),
                        ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _fourBeenPressed = !_fourBeenPressed;
                            // _hasBeenPressed = false;
                            // _wasBeenPressed = false;
                          });
                        },
                        child: _fourBeenPressed
                            ? Icon(Icons.star,
                                size: 25, color: Theme.of(context).primaryColor)
                            : Icon(Icons.star_outline,
                                size: 25, color: Theme.of(context).primaryColor)
                        // Icon(
                        //   Icons.star,
                        //   size: 25,
                        //   // color: _isBeenPressed
                        //   //     ? Theme.of(context).primaryColor
                        //   //     : Colors.white70,
                        //   // // 3
                        // ),
                        ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _fiveBeenPressed = !_fiveBeenPressed;
                            // _hasBeenPressed = false;
                            // _wasBeenPressed = false;
                          });
                        },
                        child: _fiveBeenPressed
                            ? Icon(Icons.star,
                                size: 25, color: Theme.of(context).primaryColor)
                            : Icon(Icons.star_outline,
                                size: 25, color: Theme.of(context).primaryColor)
                        // Icon(
                        //   Icons.star,
                        //   size: 25,
                        //   // color: _isBeenPressed
                        //   //     ? Theme.of(context).primaryColor
                        //   //     : Colors.white70,
                        //   // // 3
                        // ),
                        ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: aChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            aChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "UnClean Car",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: bChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            bChecked = value!;

                            // aChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Rude Behavior",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: cChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            cChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Rash Driving",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: dChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            dChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Different Driver Came",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: eChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            eChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Violated Traffic Signals",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: fChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            fChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Different Vehicle",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: sizeConfig!.height(0.17),
                  width: sizeConfig!.width(0.82),
                  child: MyTextField(
                    // controller: textController,
                    // // enabled: false,
                    // onChanged: _onChanged,
                    // focusedBorder: InputBorder.none,
                    // enabledBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    // suffixIcon: Align(
                    //     alignment: Alignment.bottomRight,
                    //     child: Icon(Icons.home)),
                    hintText: "Add More Comments",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    filled: true,
                    // maxLength: 1000,
                    maxLines: 7,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: sizeConfig!.width(0.82),
                  height: 40,
                  child: MySecondButton(
                    border: Border.all(color: Colors.white, width: 1),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainScreenOnline())),
                    title: "Submit",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
