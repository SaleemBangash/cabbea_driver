// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/driver_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

import '../utils/size_config.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'accept_offer_one.dart';
import 'google_map/google_map_page.dart';
import 'main_screen_online.dart';
// import 'reg_otp.dart';

class AccepDriverOffer extends StatefulWidget {
  const AccepDriverOffer({Key? key}) : super(key: key);

  @override
  _AccepDriverOfferState createState() => _AccepDriverOfferState();
}

class _AccepDriverOfferState extends State<AccepDriverOffer> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  int charLength = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }

  final textController = TextEditingController();

  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool _isEnable = false;
  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;

  var iChecked;

//  @override
//   void initState() {
//     _load();
//     super.initState();
//   }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      data: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainScreenOnline()));
        },
        child: Text("Cancel",
            style: TextStyle(color: Theme.of(context).primaryColor)),
      ),
      // backgroundColor: Colors.grey,
      body: Stack(
        children: [
          MapOne(),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage("assets/map.png"),
            fit: BoxFit.cover,
          ))),
          // Positioned(
          //   top: 40,
          //   child: GestureDetector(
          //     onTap: () {
          //       _scaffoldKey.currentState!.openDrawer();
          //     },
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Image.asset(
          //         'assets/side_bar.png',
          //         width: 60.0,
          //         height: 60.0,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
              bottom: sizeConfig!.height(0.029),
              left: sizeConfig!.width(0.10),
              child: SizedBox(
                width: sizeConfig!.width(0.72),
                height: 50,
                child: MySecondButton(
                  border: Border.all(width: 1, color: Colors.white),
                  onTap: () => _settingModalBottomSheet(context),
                  title: "Let's Go",
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ))
        ],
      ),
      drawer: DriverDrawer(),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Color(0xff252527),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 300,
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
                      child: Text(
                        "3KM",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: sizeConfig!.width(0.82),
                  height: 50,
                  child: MySecondButton(
                    border: Border.all(width: 1, color: Colors.white),
                    onTap: () => showDialog(
                      barrierDismissible: true,
                      // barrierColor: Theme.of(context).primaryColor,
                      context: context,
                      builder: (BuildContext context) {
                        return Expanded(
                          child: Dialog(
                            backgroundColor: Color(0xff272525),
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            )),
                            child: SizedBox(
                              height: 590,
                              width: 490,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                child: Scaffold(
                                  appBar: AppBar(
                                    toolbarHeight: 40,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                    automaticallyImplyLeading: false,
                                    title: Text(
                                      "Give Offer At RS300",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                  ),
                                  body: Container(
                                    width: sizeConfig!.width(0.82),
                                    color: Color(0xff272525),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: sizeConfig!.width(0.68),
                                          height: 40,
                                          child: MySecondButton(
                                            border: Border.all(
                                                width: 1, color: Colors.white),
                                            title: "Offer your fare at RS285",
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        SizedBox(
                                          width: sizeConfig!.width(0.68),
                                          height: 40,
                                          child: MySecondButton(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          acceptOfferOne()));
                                            },
                                            border: Border.all(
                                                width: 1, color: Colors.white),
                                            title: "Offer your fare at RS250",
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        SizedBox(
                                          width: sizeConfig!.width(0.68),
                                          height: 40,
                                          child: MySecondButton(
                                            border: Border.all(
                                                width: 1, color: Colors.white),
                                            onTap: () =>
                                                _settingModalBottomSheet(
                                                    context),
                                            title: "Offer your fare at RS250",
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        SizedBox(
                                          width: sizeConfig!.width(0.68),
                                          height: 40,
                                          child: MySecondButton(
                                            border: Border.all(
                                                width: 1, color: Colors.white),
                                            onTap: () =>
                                                _settingModalBottomSheet(
                                                    context),
                                            title: "Offer your fare at RS230",
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        SizedBox(
                                          width: sizeConfig!.width(0.68),
                                          height: 40,
                                          child: MySecondButton(
                                            border: Border.all(
                                                width: 1, color: Colors.white),
                                            onTap: () =>
                                                _settingModalBottomSheet(
                                                    context),
                                            title: "Offer your fare at RS200",
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.white)),
                                            width: sizeConfig!.width(0.68),
                                            height: 40,
                                            child: Center(child: Text("Skip"))),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    title: "Offer Your Fare",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => acceptOfferOne()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(width: 2, color: Colors.white)),
                      width: sizeConfig!.width(0.82),
                      height: 50,
                      child: Center(child: Text("Skip"))),
                ),
              ],
            ),
          );
        });

    void _commentModalBottomSheet(context) {
      showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Color(0xff252527),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          context: context,
          builder: (BuildContext bc) {
            return Container(
              height: 650,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15.0)),
                    height: 180,
                    width: 330,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            _isEnable = true;
                          }),
                          child: SizedBox(
                            height: 140,
                            width: 300,
                            child: MyTextField(
                              controller: textController,
                              // enabled: false,
                              onChanged: _onChanged,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              // suffixIcon: Align(
                              //     alignment: Alignment.bottomRight,
                              //     child: Icon(Icons.home)),
                              hintText: "Add Comments",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0))),
                              filled: true,
                              // maxLength: 1000,
                              maxLines: 7,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("$charLength/1000",
                                        style: TextStyle(fontSize: 15))),
                                Text("Let's Go",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // TextFormField(inputFormatters: [
                  //   LengthLimitingTextInputFormatter(10),
                  // ])
                ],
              ),
            );
          });
    }

    // _dialogue() {
    //   Dialog(
    //     alignment: Alignment.center,
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(30.0),
    //       topRight: Radius.circular(30.0),
    //       bottomRight: Radius.circular(30.0),
    //       bottomLeft: Radius.circular(30.0),
    //     )),
    //     child: SizedBox(
    //       height: 200,
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(30),
    //           topRight: Radius.circular(30),
    //           bottomRight: Radius.circular(30.0),
    //           bottomLeft: Radius.circular(30.0),
    //         ),
    //         child: Scaffold(
    //           // appBar: AppBar(
    //           //   shape: RoundedRectangleBorder(
    //           //       borderRadius: BorderRadius.only(
    //           //           topLeft: Radius.circular(10.0),
    //           //           topRight: Radius.circular(10.0))),
    //           //   automaticallyImplyLeading: false,
    //           //   centerTitle: false,
    //           //   title: Text(
    //           //     "ExitApp?",
    //           //     style: TextStyle(color: Colors.white),
    //           //   ),
    //           //   backgroundColor: Theme.of(context).primaryColor,
    //           // ),
    //           body: ClipRRect(
    //             borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(50), topRight: Radius.circular(50)),
    //             child: Container(
    //               decoration: BoxDecoration(
    //                   // color: Colors.grey,

    //                   ),
    //               height: 200,
    //               //width: width / 3,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     // Container(
    //                     //   width: 600,
    //                     //   height: 70,
    //                     //   decoration:
    //                     //       BoxDecoration(color: Theme.of(context).primaryColor),
    //                     //   child: Row(
    //                     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     //     children: [
    //                     //       Padding(
    //                     //         padding: const EdgeInsets.only(left: 40),
    //                     //         child: Text(
    //                     //           "Change Language",
    //                     //           style: TextStyle(
    //                     //               fontSize: 20, fontWeight: FontWeight.bold),
    //                     //         ),
    //                     //       ),
    //                     //       IconButton(
    //                     //         icon: Icon(
    //                     //           Icons.close,
    //                     //         ),
    //                     //         iconSize: 30,
    //                     //         color: Colors.black,
    //                     //         splashColor: Colors.purple,
    //                     //         onPressed: () => Navigator.push(
    //                     //             context,
    //                     //             MaterialPageRoute(
    //                     //                 builder: (context) => LoginScreen())),
    //                     //       ),
    //                     //     ],
    //                     //   ),
    //                     // ),
    //                     Text("Do you want to hide your profile?"),
    //                     SizedBox(
    //                       height: 20,
    //                     ),

    //                     Padding(
    //                       padding: const EdgeInsets.only(right: 30),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.end,
    //                         children: [
    //                           GestureDetector(
    //                             onTap: (() {
    //                               Navigator.push(
    //                                   context,
    //                                   MaterialPageRoute(
    //                                       builder: (context) => Registration()));
    //                             }),
    //                             child: Padding(
    //                               padding: const EdgeInsets.only(left: 20),
    //                               child: Container(
    //                                   decoration: BoxDecoration(
    //                                       color: Colors.grey,
    //                                       borderRadius:
    //                                           BorderRadius.circular(10.0)),
    //                                   // width: 200,
    //                                   // height: 40,
    //                                   width: sizeConfig!.width(0.2),
    //                                   height: sizeConfig!.height(0.04),
    //                                   child: Center(
    //                                       child: Text(
    //                                     "Yes",
    //                                     style: TextStyle(
    //                                         fontWeight: FontWeight.bold,
    //                                         color: Colors.white),
    //                                   ))),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             width: 10,
    //                           ),
    //                           Container(
    //                               width: sizeConfig!.width(0.2),
    //                               height: sizeConfig!.height(0.04),
    //                               child: MySecondButton(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 title: ("No"),
    //                                 onTap: (() {
    //                                   Navigator.pop(
    //                                     context,
    //                                   );
    //                                 }),
    //                               )),
    //                         ],
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }
  }

//  StatefulBuilder(
//                         builder: (BuildContext context, StateSetter setState) {
//                       return Checkbox(
//                         activeColor: Theme.of(context).primaryColor,
//                         checkColor: Theme.of(context).primaryColor,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         value: isChecked,
//                         onChanged: (bool? value) {
//                           setState(() {
//                             isChecked = value!;
//                             onChecked = false;
//                           });
//                         },
//                       );
//                     }),
}
