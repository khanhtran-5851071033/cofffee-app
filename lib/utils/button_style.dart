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

TextButton buttonLogin(String title, VoidCallback callbackAction) => TextButton(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(title),
    ),
    onPressed: callbackAction,
    style: ButtonStyle(
        overlayColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(.4)),
        backgroundColor:
            MaterialStateProperty.all<Color>(Colors.grey.withOpacity(.7)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ))));
TextButton buttonApple(VoidCallback callbackAction) => TextButton.icon(
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text('Tiếp tục bằng Apple'),
    ),
    icon: Image.asset(
      'assets/icons/apple-logo.png',
      width: 20,
    ),
    onPressed: callbackAction,
    style: ButtonStyle(
        overlayColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(.4)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ))));
TextButton buttonFb(VoidCallback callbackAction) => TextButton.icon(
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text('Tiếp tục bằng Facebook'),
    ),
    icon: Image.asset(
      'assets/icons/facebook-logo.png',
      width: 20,
    ),
    onPressed: callbackAction,
    style: ButtonStyle(
        overlayColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(.4)),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1A73EA)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ))));
TextButton buttonGg(VoidCallback callbackAction) => TextButton.icon(
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text('Tiếp tục bằng Google'),
    ),
    icon: Image.asset(
      'assets/icons/search.png',
      width: 20,
    ),
    onPressed: callbackAction,
    style: ButtonStyle(
        overlayColor:
            MaterialStateProperty.all<Color>(Colors.grey.withOpacity(.4)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          side: BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ))));
