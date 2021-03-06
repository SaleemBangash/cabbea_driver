// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:form_field_validator/form_field_validator.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final void Function(String)? onChanged;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final InputBorder? errorBorder;
  final bool? enabled;
  final int? maxLength;
  final TextEditingController? controller;
  final int? maxLines;
  final Widget? label;
  final Widget? prefixIcon;
  final String? labelText;
  final InputBorder? border;
  // final Function validator;
  final TextInputType inputType;
  final String? Function(String?)? validator;
  //final  MultiValidator validate;
  final EdgeInsetsGeometry? contentPadding;
  final bool isDense;
  final bool filled;
  final bool obsecureText;
  final Widget? suffixIcon;
  const MyTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.label,
    this.border,
    this.inputType = TextInputType.text,
    this.validator,
    this.contentPadding,
    // required this.MultiValidator,
    this.filled = false,
    this.isDense = false,
    this.suffixIcon,
    this.obsecureText = false,
    this.maxLines,
    this.controller,
    this.enabled,
    this.maxLength,
    this.onChanged,
    this.focusedBorder,
    this.enabledBorder,
    this.disabledBorder,
    this.errorBorder,
    this.hintStyle,
    //  required this.onValidate,
    // required MultiValidator validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        // validator: (value) {
        //   return onValidate(value.toString());
        // },
        validator: validator,
        style: TextStyle(color: Colors.black),
        keyboardType: inputType,
        obscureText: obsecureText,
        maxLines: maxLines,
        enabled: enabled,
        onChanged: onChanged,
        maxLength: maxLength,
        controller: controller,
        decoration: InputDecoration(
            isDense: isDense,
            contentPadding: contentPadding,
            label: label,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            hintStyle: TextStyle(color: Colors.black, fontSize: 14),
            filled: filled,
            labelText: labelText,
            fillColor: Colors.grey[200],
            focusedBorder: focusedBorder,
            enabledBorder: enabledBorder,
            disabledBorder: disabledBorder,
            errorBorder: errorBorder,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: border)

        // validator: MultiValidator,
        );
  }
}
