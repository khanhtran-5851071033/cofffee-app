import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

List listLevel = [
  {
    'level': 'Mới',
    'Color1': Colors.orange[200],
    'Color2': buttonColor,
    'isSelected': true,
    'list': listNewLevel
  },
  {
    'level': 'Đồng',
    'Color2': Color(0xff200122),
    'Color1': Colors.brown,
    'isSelected': false,
    'list': listCuLevel
  },
  {
    'level': 'Bạc',
    'Color2': Color(0xff43C6AC),
    'Color1': Color(0xffc0c0aa),
    'isSelected': false,
    'list': listAgLevel
  },
  {
    'level': 'Vàng',
    'Color2': Color(0xffF2994A),
    'Color1': Color(0xffF2C94C),
    'isSelected': false,
    'list': listGolLevel
  },
  {
    'level': 'Kim cương',
    'Color1': Color(0xffEB5757),
    'Color2': Color(0xff000000),
    'isSelected': false,
    'list': listDimonLevel
  },
];

List listNewLevel = [
  {
    'assets': 'assets/icons/cup.png',
    'title': 'Miễn phí upsize cho đơn hàng đầu tiên',
  },
];
List listCuLevel = [
  {
     'assets': 'assets/icons/birthday-cake.png',
    'title': 'Tặng 01 phần bánh sinh nhật',
  },
  {
    'assets': 'assets/icons/snack.png',
    'title': 'Miễn phí 01 phần Snack cho đơn hàng trên 100,000đ',
  },
  {
    'assets': 'assets/icons/shopping-bag.png',
    'title': 'Đặc quyền Đổi Ưu đãi bằng điểm BEAN tích lũy',
  },
];
List listAgLevel = [
  {
     'assets': 'assets/icons/birthday-cake.png',
    'title': 'Tặng 01 phần bánh sinh nhật',
  },
  {
    'assets': 'assets/icons/promotion.png',
    'title': 'Ưu đãi Mua 2 tặng 1',
  },
  {
    'assets': 'assets/icons/shopping-bag.png',
    'title': 'Đặc quyền Đổi Ưu đãi bằng điểm BEAN tích lũy',
  },
];
List listGolLevel = [
  {
     'assets': 'assets/icons/birthday-cake.png',
    'title': 'Tặng 01 phần bánh sinh nhật',
  },
  {
    'assets': 'assets/icons/cup.png',
    'title': 'Miễn phí 1 phần nước Cà phê / Trà',
  },
  {
    'assets': 'assets/icons/shopping-bag.png',
    'title': 'Đặc quyền Đổi Ưu đãi bằng điểm BEAN tích lũy',
  },
];
List listDimonLevel = [
  {
    'assets': 'assets/icons/coffee-bean.png',
    'title': 'Được nhân 1.5 BEAN tích lũy',
  },
  {
    'assets': 'assets/icons/birthday-cake.png',
    'title': 'Tặng 01 phần bánh sinh nhật',
  },
  {
    'assets': 'assets/icons/cup.png',
    'title': 'Miễn phí 1 phần nước bất kỳ',
  },
  {
    'assets': 'assets/icons/promotion.png',
    'title': 'Nhận riêng Ưu đãi từ The Coffee House và đối tác khác',
  },
  {
    'assets': 'assets/icons/favourites.png',
    'title': 'Cơ hội trải nghiệm & hưởng đặc quyền đầu tiên',
  },
  {
    'assets': 'assets/icons/shopping-bag.png',
    'title': 'Đặc quyền Đổi Ưu đãi bằng điểm BEAN tích lũy',
  },
];
////-------------------------------------////////////////