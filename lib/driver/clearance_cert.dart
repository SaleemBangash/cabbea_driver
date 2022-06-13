// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:cabbea_driver/driver/subscription.dart';
import 'package:cabbea_driver/driver/vehicle_info.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:image_picker/image_picker.dart';
import '../main.dart';

import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';

class ClearanceCertificate extends StatefulWidget {
  const ClearanceCertificate({Key? key}) : super(key: key);

  @override
  State<ClearanceCertificate> createState() => _ClearanceCertificateState();
}

class _ClearanceCertificateState extends State<ClearanceCertificate> {
  bool aChecked = false;
  bool bChecked = false;
  bool isChecked = false;

  String? dropupvalue;
  var itemss = ['2009', '2010', '2011', '2012', '2013', '2014'];

  String? dropvalue;
  var items = ['Mehran', 'Suzuki', 'Toyota', 'Corolla', 'Honda', 'Alto'];

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VehicleInformation()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'Clearance Certificate',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Clearance Certificate",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              FontAwesomeIcons.asterisk,
                              size: 15,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: sizeConfig!.width(0.90),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            color: Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => _showChoiceDialog(context),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  width: sizeConfig!.width(0.35),
                                  height: sizeConfig!.height(0.04),
                                  // color: Colors.green,
                                  child: (imageFile == null)
                                      ? Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                          width: sizeConfig!.width(0.35),
                                          height: sizeConfig!.height(0.04),
                                          child: Center(
                                              child: Text("No File Chosen")))
                                      // Text("Choose Image")
                                      : Image.file(
                                          File(imageFile!.path),
                                          // width: 290,
                                          // height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Clearance Certificate",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              FontAwesomeIcons.asterisk,
                              size: 15,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: sizeConfig!.width(0.90),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            color: Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => _newshowChoiceDialog(context),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  width: sizeConfig!.width(0.35),
                                  height: sizeConfig!.height(0.04),
                                  // color: Colors.green,
                                  child: (newimageFile == null)
                                      ? Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                          width: sizeConfig!.width(0.35),
                                          height: sizeConfig!.height(0.04),
                                          child: Center(
                                              child: Text("No File Chosen")))
                                      // Text("Choose Image")
                                      : Image.file(
                                          File(newimageFile!.path),
                                          // width: 290,
                                          // height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 390),
                  child: SizedBox(
                    height: sizeConfig!.height(0.06),
                    width: sizeConfig!.width(0.90),
                    child: MySecondButton(
                      border: Border.all(width: 1, color: Colors.white),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Subscription())),
                      title: "Next",
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PickedFile? imageFile = null;

  // Future<void> _showChoiceDialog(BuildContext context) async {
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  // Divider(
                  //   height: 1,
                  //   color: Colors.blue,
                  // ),
                  // ListTile(
                  //   onTap: () {
                  //     _openGallery(context);
                  //   },
                  //   title: Text("Gallery"),
                  //   leading: Icon(
                  //     Icons.account_box,
                  //     color: Colors.blue,
                  //   ),
                  // ),

                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

  PickedFile? newimageFile = null;

  // Future<void> _showChoiceDialog(BuildContext context) async {
  Future<void> _newshowChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  // Divider(
                  //   height: 1,
                  //   color: Colors.blue,
                  // ),
                  // ListTile(
                  //   onTap: () {
                  //     _openGallery(context);
                  //   },
                  //   title: Text("Gallery"),
                  //   leading: Icon(
                  //     Icons.account_box,
                  //     color: Colors.blue,
                  //   ),
                  // ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _newopenGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      newimageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _newopenCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      newimageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
