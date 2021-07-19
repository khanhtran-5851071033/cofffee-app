import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

TextButton button(String title, VoidCallback callbackAction) => TextButton(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(title),
    ),
    onPressed: callbackAction,
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(3),
        shadowColor: MaterialStateProperty.all<Color>(buttonColor),
        overlayColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(.4)),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ))));


       
