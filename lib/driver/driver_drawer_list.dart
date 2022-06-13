import 'package:flutter/material.dart';

class DriverDrawerList extends StatelessWidget {
  final String assetName;
  final DecorationImage? image;
  final String data;
  const DriverDrawerList(
      {Key? key, required this.assetName, this.image, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(assetName), fit: BoxFit.cover)),
            )),
        Text(
          data,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
