// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:image_picker/image_picker.dart';
import '../main.dart';

import '../widgets/app_bar.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'driving_liscense.dart';
import 'information.dart';

class CnicPassport extends StatefulWidget {
  const CnicPassport({Key? key}) : super(key: key);

  @override
  State<CnicPassport> createState() => _CnicPassportState();
}

class _CnicPassportState extends State<CnicPassport> {
  bool aChecked = false;
  bool bChecked = false;
  bool isChecked = false;

  String? dropvalue;
  var items = ['ISL', 'RWL', 'LHR', 'PSH', 'MLT', 'KRC'];

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Information()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'CNIC/Passport',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("First Name",
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: sizeConfig!.width(0.40),
                        height: 30,
                        child: MyTextField(
                          hintText: "First Name",
                          hintStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Last Name",
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
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: sizeConfig!.width(0.40),
                        height: 30,
                        child: MyTextField(
                          hintText: "Last Name",
                          hintStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("CNIC# ",
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
                    SizedBox(
                      width: sizeConfig!.width(0.90),
                      height: 40,
                      child: MyTextField(
                        inputType: TextInputType.emailAddress,
                        hintText: "CNIC#",
                        hintStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Cnic Front",
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
                        Text("Cnic Back",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Date of issue",
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
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: sizeConfig!.width(0.42),
                              height: 30,
                              child: MyTextField(
                                suffixIcon: Icon(Icons.calendar_month,
                                    color: Theme.of(context).primaryColor),
                                hintText: "12/22",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Date of Expiry",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
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
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: sizeConfig!.width(0.42),
                              height: 30,
                              child: MyTextField(
                                suffixIcon: Icon(Icons.calendar_month,
                                    color: Theme.of(context).primaryColor),
                                hintText: "12/22",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: sizeConfig!.height(0.06),
                  width: sizeConfig!.width(0.90),
                  child: MySecondButton(
                    border: Border.all(width: 1, color: Colors.white),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DrivingLicense())),
                    title: "Next",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ],
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
