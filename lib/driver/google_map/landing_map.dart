import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'google_map_page.dart';
import 'provider/location_provider.dart';

class LandingMap extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          // ignore: prefer_collection_literals
          child: MapOne(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MapOne(),
      ),
    );
  }
}
