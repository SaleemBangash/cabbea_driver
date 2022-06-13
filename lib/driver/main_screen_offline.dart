// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/size_config.dart';
import '../widgets/app_bar.dart';
import 'driver_drawer.dart';
import 'driver_ratings.dart';
import 'main_screen_online.dart';

class MainScreenOffine extends StatefulWidget {
  const MainScreenOffine({Key? key}) : super(key: key);

  @override
  State<MainScreenOffine> createState() => _MainScreenOffineState();
}

class _MainScreenOffineState extends State<MainScreenOffine> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      drawer: DriverDrawer(),
      backgroundColor: Color(0xff272525),
      actions: [Image.asset("assets/toggle_grey.png")],
      data: Text(""),
      body: Center(
        child: Container(
          child: Image.asset("assets/no_rides.png"),
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
            label: "MyRides",
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreenOffine())),
                child: Image.asset("assets/my_rides.png")),
          ),
          BottomNavigationBarItem(
            label: "MyEarnings",
            backgroundColor: Colors.white,
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreenOnline())),
                child: Image.asset("assets/my_earnings.png")),
          ),
          BottomNavigationBarItem(
            label: "MyRatings",
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverRatings())),
                child: Image.asset("assets/my_ratings.png")),
          )
        ],
      ),
    );
  }
}
