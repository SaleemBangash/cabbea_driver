// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../main.dart';
import '../../widgets/second_button.dart';
import '../../widgets/text_field.dart';
import '../widgets/app_bar.dart';
import 'clearance_cert.dart';
import 'information.dart';
import 'main_screen_online.dart';

final List titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
  ' Ice Cream ',
];

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  // PageController controller = PageController();
  List<Widget> imageSliders = [
    // Container(
    //   child: Text("data"),
    // ),
    // itemContainer(),

    Container(
        margin: EdgeInsets.symmetric(horizontal: 0.10),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1, color: Color(0xffFF8F1E)),
            color: Color(0xffEBEBEB)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Prime",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xffFF8F1E)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffFF8F1E),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Includes Cars From \n 660Cc and above",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffFF8F1E),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "And Registration\nfrom 2007 and above",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: 10,
            //       height: 10,
            //       decoration: BoxDecoration(
            //         color: Color(0xffFF8F1E),
            //         shape: BoxShape.circle,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Text("Get Subscribe",
            //         style: TextStyle(fontSize: 14, color: Colors.black)),
            //   ],
            // ),

            Text(
              "PKR 5000/Month",
              style: TextStyle(fontSize: 18, color: Color(0xffFF8F1E)),
            ),
          ],
        )),

    Container(
        margin: EdgeInsets.symmetric(horizontal: 0.10),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1, color: Color(0xffFF8F1E)),
            color: Color(0xffEBEBEB)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Cabbini",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xffFF8F1E)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffFF8F1E),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Includes Cars from\n 660CC and above",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffFF8F1E),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "And Registration\nfrom 2000 and above",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: 10,
            //       height: 10,
            //       decoration: BoxDecoration(
            //         color: Color(0xffFF8F1E),
            //         shape: BoxShape.circle,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Text("Get Subscribe",
            //         style: TextStyle(fontSize: 14, color: Colors.black)),
            //   ],
            // ),
            Text(
              "PKR 4000/Month",
              style: TextStyle(fontSize: 18, color: Color(0xffFF8F1E)),
            ),
          ],
        )),

    Container(
        margin: EdgeInsets.symmetric(horizontal: 0.10),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1, color: Color(0xffFF8F1E)),
            color: Color(0xffEBEBEB)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bikee",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xffFF8F1E)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xffFF8F1E),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Any Bike Model from\n 2000 and above",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: 10,
            //       height: 10,
            //       decoration: BoxDecoration(
            //         color: Color(0xffFF8F1E),
            //         shape: BoxShape.circle,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Text(
            //       "Get Subscribe",
            //       style: TextStyle(fontSize: 14, color: Colors.black),
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: 10,
            //       height: 10,
            //       decoration: BoxDecoration(
            //         color: Color(0xffFF8F1E),
            //         shape: BoxShape.circle,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Text("Get Subscribe",
            //         style: TextStyle(fontSize: 14, color: Colors.black)),
            //   ],
            // ),

            Text(
              "PKR 1800/Month",
              style: TextStyle(fontSize: 18, color: Color(0xffFF8F1E)),
            ),
          ],
        )),
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      data: Text(""),
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainScreenOnline()));
          }),
          child: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          )),
      body: Container(
        margin: EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "My plan",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/cab_icon.png"),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 350,
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 200,
                      viewportFraction: .6,
                      aspectRatio: 0.4,
                      enlargeCenterPage: true,
                      // scrollDirection: Axis.vertical,
                      // autoPlay: true,
                      // enlargeStrategy: CenterPageEnlargeStrategy.height,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imageSliders,
                  // items: imageSliders,
                )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageSliders.map((url) {
                  int index = imageSliders.indexOf(url);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Theme.of(context).primaryColor),
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: sizeConfig!.height(0.06),
              width: sizeConfig!.width(0.90),
              child: MySecondButton(
                border: Border.all(width: 1, color: Colors.white),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Information())),
                title: "Subscribe",
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ],
        ),
        // SmoothPageIndicator(
        //   onDotClicked: (int index) {
        //     setState(() {});
        //   },
        //   controller: controller,
        //   count: 6,
        //   effect: SlideEffect(
        //       spacing: 8.0,
        //       radius: 4.0,
        //       dotWidth: 24.0,
        //       dotHeight: 16.0,
        //       paintStyle: PaintingStyle.stroke,
        //       strokeWidth: 1.5,
        //       dotColor: Colors.grey,
        //       activeDotColor: Colors.indigo),
        // )

        // SizedBox(
        //   height: 100,
        //   width: 100,
        //   child: PageIndicatorContainer(
        //     key: key,
        //     child: PageView.builder(
        //         itemCount: 2,
        //         itemBuilder: (context, position) {
        //           return Container(
        //             // Padding will help prevent overlap on the page indicator
        //             padding: EdgeInsets.fromLTRB(5, 5, 5, 30),
        //             child: Container(
        //               color: Colors.greenAccent,
        //               child: Center(child: Text('${position + 1}')),
        //             ),
        //           );
        //         }),
        //     align: IndicatorAlign.bottom,
        //     length: 4,
        //     indicatorSpace: 20.0,
        //     padding: const EdgeInsets.all(10),
        //     indicatorColor: Colors.grey,
        //     indicatorSelectorColor: Colors.blue,
        //     shape: IndicatorShape.circle(size: 12),
        //   ),
        // ),
      ),
    );
  }

  // _itemContainer() =>

  _upgradeContainer() => Stack(
        children: [
          // Positioned(
          //   left: 70,
          //   child: Text(
          //     "Upgrade Your Plan",
          //     style: Theme.of(context).textTheme.bodyText2!.copyWith(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 30,
          //         color: Theme.of(context).primaryColor),
          //   ),
          // ),
          SizedBox(
            height: 30,
          ),
          Stack(children: [
            Positioned(
              left: 80,
              top: 80,
              child: Container(
                width: 230,
                height: sizeConfig!.height(0.63),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            Positioned(
              top: 70,
              left: 180,
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 20,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 150,
              child: Container(
                width: 100,
                height: sizeConfig!.height(0.13),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,

                  // image: DecorationImage(
                  //   image:
                  //       const AssetImage('assets/images/john.jpg'),
                  //   fit: BoxFit.fill,
                  // ),
                ),
                child: ClipOval(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(
                    //   "GOLD",
                    //   style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    //       fontWeight: FontWeight.bold, color: Colors.yellow),
                    // ),
                    Text(
                      "50",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                    Text(
                      "SAR",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    )
                  ],
                )),
              ),
            ),
            Positioned(
                top: 110,
                left: 221,
                child: Icon(Icons.star,
                    size: 30, color: Color.fromARGB(255, 179, 177, 166))),
            Positioned(
              top: 220,
              left: 100,
              child: Column(
                children: [
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 190, height: 2, color: Colors.white),
                  ),
                  // Divider(
                  //   thickness: 1,
                  //   color: Color.fromARGB(255, 235, 231, 231),
                  // ),
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 190, height: 2, color: Colors.white),
                  ),
                  // Divider(
                  //   thickness: 1,
                  //   color: Color.fromARGB(255, 235, 231, 231),
                  // ),
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 190, height: 2, color: Colors.white),
                  ),
                  // Divider(
                  //   thickness: 1,
                  //   color: Color.fromARGB(255, 235, 231, 231),
                  // ),
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 190, height: 2, color: Colors.white),
                  ),
                  // Divider(
                  //   thickness: 1,
                  //   color: Color.fromARGB(255, 235, 231, 231),
                  // ),
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 190, height: 2, color: Colors.white),
                  ),
                  // Divider(
                  //   thickness: 1,
                  //   color: Color.fromARGB(255, 235, 231, 231),
                  // ),
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 190, height: 2, color: Colors.white),
                  ),
                  // Divider(
                  //   thickness: 1,
                  //   color: Color.fromARGB(255, 235, 231, 231),
                  // ),
                  Text(
                    "Change Location",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(

                      // width: double.infinity,
                      width: sizeConfig!.width(0.4),
                      height: sizeConfig!.height(0.05),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey[200]),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ],
      );

  _itemContainer() => Container(
        margin: EdgeInsets.symmetric(horizontal: 0.10),
        child: Stack(
          // alignment: Alignment.centerLeft,
          children: [
            // Positioned(
            //   left: 70,
            //   child: Text(
            //     "Upgrade Your Plan",
            //     style: Theme.of(context).textTheme.bodyText2!.copyWith(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 30,
            //         color: Theme.of(context).primaryColor),
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              Positioned(
                left: 80,
                top: 80,
                child: Container(
                  width: 230,
                  height: sizeConfig!.height(0.63),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              Positioned(
                top: 70,
                left: 180,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  radius: 20,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 150,
                child: Container(
                  width: 100,
                  height: sizeConfig!.height(0.13),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,

                    // image: DecorationImage(
                    //   image:
                    //       const AssetImage('assets/images/john.jpg'),
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                  child: ClipOval(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "GOLD",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.yellow),
                      ),
                      Text(
                        "100",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        "SAR",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Theme.of(context).primaryColor),
                      )
                    ],
                  )),
                ),
              ),
              Positioned(
                  top: 110,
                  left: 221,
                  child: Icon(Icons.star,
                      size: 30, color: Color.fromARGB(255, 245, 222, 17))),
              Positioned(
                top: 220,
                left: 100,
                child: Column(
                  children: [
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Container(width: 190, height: 2, color: Colors.white),
                    ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Color.fromARGB(255, 235, 231, 231),
                    // ),
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Container(width: 190, height: 2, color: Colors.white),
                    ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Color.fromARGB(255, 235, 231, 231),
                    // ),
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Container(width: 190, height: 2, color: Colors.white),
                    ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Color.fromARGB(255, 235, 231, 231),
                    // ),
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Container(width: 190, height: 2, color: Colors.white),
                    ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Color.fromARGB(255, 235, 231, 231),
                    // ),
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Container(width: 190, height: 2, color: Colors.white),
                    ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Color.fromARGB(255, 235, 231, 231),
                    // ),
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Container(width: 190, height: 2, color: Colors.white),
                    ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Color.fromARGB(255, 235, 231, 231),
                    // ),
                    Text(
                      "Change Location",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(

                        // width: double.infinity,
                        width: sizeConfig!.width(0.4),
                        height: sizeConfig!.height(0.05),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                          child: Text(
                            "Book Now",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor),
                          ),
                        )),
                  ],
                ),
              ),
            ]),
          ],
        ),
      );
}
