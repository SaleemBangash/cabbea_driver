// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../driver/accept_offer.dart';
import '../driver/accept_offer_one.dart';
import '../driver/main_screen_online.dart';
import '../main.dart';

class BottomBar extends StatefulWidget {
  // final Widget body;
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [
    MainScreenOnline(),
    AccepDriverOffer(),
    acceptOfferOne()
    //Center(child: Text("Settings")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: widget.body,
      body: Center(
        child: screens[_selectedIndex], //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        // key: globalKey,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        backgroundColor: Color(0xff252727),

        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 0.0),
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 27),
        // unselectedIconTheme: const IconThemeData(size: 22),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        // selectedLabelStyle: Colors.accents,
        // unselectedLabelStyle: textTheme.caption,
        // onTap: _onItemTapped,
        // currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: "My Rides",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.hand,
              size: 21,
            ),
            label: "My Earnings",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border,
              size: 21,
            ),
            label: "My Ratings",
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // selectedFontSize: 20,

        onTap: _onItemTapped,
      ),
    );
  }
}
