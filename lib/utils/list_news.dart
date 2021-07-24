import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

List listNews = [
  {'title': 'Ưu đãi đặt biệt', 'isSelected': true, 'list': listNewsDetails},
  {'title': 'Cập nhật từ nhà', 'isSelected': false, 'list': listNewsDetails1},
  {'title': '#CoffeeLover', 'isSelected': false, 'list': listNewsDetails2}
];
List listNewsDetails = [
  {
    'image': 'assets/images/post.jpg',
    'title': 'Tăng năng suất gấp 15 lần với gòi "Work From"',
    'time': '03/06/2021'
  },
  {'image': 'assets/images/poster1.jpg', 'title': 'abc', 'time': '03/06/2021'},
  {'image': 'assets/images/poster2.jpg', 'title': 'abc', 'time': '03/06/2021'},
  {
    'image': 'assets/images/poster7.jpg',
    'title': 'Tăng năng suất gấp 15 lần với gòi "Work From"',
    'time': '03/06/2021'
  },
  {'image': 'assets/images/poster8.jpg', 'title': 'abc', 'time': '03/06/2021'},
  {'image': 'assets/images/poster5.jpg', 'title': 'abc', 'time': '03/06/2021'},
];
List listNewsDetails1 = [
  {
    'image': 'assets/images/poster6.jpg',
    'title': 'Tăng năng suất gấp 15 lần với gòi "Work From"',
    'time': '03/06/2021'
  },
  {'image': 'assets/images/poster5.jpg', 'title': 'abc', 'time': '03/06/2021'},
  {'image': 'assets/images/poster2.jpg', 'title': 'abc', 'time': '03/06/2021'},
];
List listNewsDetails2 = [
  {
    'image': 'assets/images/poster8.jpg',
    'title': 'Tăng năng suất gấp 15 lần với gòi "Work From"',
    'time': '03/06/2021'
  },
  {'image': 'assets/images/poster7.jpg', 'title': 'abc', 'time': '03/06/2021'},
  {'image': 'assets/images/poster6.jpg', 'title': 'abc', 'time': '03/06/2021'},
];
Widget tab(String title, bool isSelected) {
  return Container(
    padding:
        EdgeInsets.symmetric(vertical: 7, horizontal: isSelected ? 15 : 12),
    decoration: BoxDecoration(
        color: isSelected ? greyColor : Colors.white,
        borderRadius: BorderRadius.circular(20)),
    child: Text(
      title,
      style: TextStyle(
          color: isSelected ? buttonColor : Colors.black, fontSize: 15),
    ),
  );
}
