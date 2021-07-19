import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

AppBar appbarMain(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    actions: [
      Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1.5), // changes position of shadow
              ),
            ]),
        child: Center(
          child: Icon(
            Icons.confirmation_num_outlined,
            color: buttonColor,
            size: 17,
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1.5), // changes position of shadow
              ),
            ]),
        child: Center(
          child: Icon(
            Icons.notifications_none,
            color: Colors.black,
            size: 17,
          ),
        ),
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}
