// ignore_for_file: prefer_const_constructors

import 'package:cabbea_driver/driver/driver_low_rated.dart';
import 'package:cabbea_driver/driver/main_screen_online.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'accept_offer.dart';
import 'new_chat/ride_history.dart';

class DriverRating extends StatefulWidget {
  const DriverRating({Key? key}) : super(key: key);

  @override
  State<DriverRating> createState() => _DriverRatingState();
}

class _DriverRatingState extends State<DriverRating> {
  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  bool eChecked = false;
  bool _hasBeenPressed = false;
  bool _isBeenPressed = false;
  bool _wasBeenPressed = false;

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
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreenOnline()));
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
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return GestureDetector(
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
                        );
                  }),
                  SizedBox(
                    width: 10,
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return GestureDetector(
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
                        );
                  }),
                  SizedBox(
                    width: 10,
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return GestureDetector(
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
                        );
                  }),
                  SizedBox(
                    width: 10,
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return GestureDetector(
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
                        );
                  }),
                  SizedBox(
                    width: 10,
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return GestureDetector(
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
                        );
                  }),
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
                      "Litter in Car",
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
                      "More than 4 Passengers",
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
                      side: BorderSide(color: Colors.white),
                      checkColor: Colors.black,

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
                      "Misbehaved with Cabbean",
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
                      "Did not pay Full Fare",
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
                      "Cancelled the ride without informing",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: sizeConfig!.height(0.2),
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
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: sizeConfig!.width(0.82),
                height: 50,
                child: MySecondButton(
                  border: Border.all(color: Colors.white, width: 1),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DriverLowRated())),
                  title: "Submit",
                  borderRadius: BorderRadius.circular(25.0),
                ),
              )
            ],
          ),
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
