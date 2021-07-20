import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:coffee/screens/app_page/promotion.dart';
import 'package:coffee/screens/intro_page.dart';
import 'package:coffee/screens/app_page.dart';
import 'package:coffee/screens/store_page.dart';
import 'package:coffee/utils/colors.dart';
import 'package:coffee/widgets/appbar_homepage.dart';
import 'package:coffee/widgets/appbar_main.dart';
import 'package:flutter/material.dart';

import 'booking_Page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    IntroPage(),
    BookingPage(),
    StorePage(
      isSearch: false,
    ),
    PromotionPage(),
    AppPage()
  ];
  List listIcon = [
    Icons.home_outlined,
    Icons.cake,
    Icons.storefront_outlined,
    Icons.confirmation_num_outlined,
    Icons.menu_rounded
  ];
  List listTitle = ['Trang chủ', 'Đặt hàng', 'Cửa hàng', 'Ưu đãi', 'Khác'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor,
        appBar: _currentIndex == 0
            ? appbarHome('Chào bạn mới')
            : appbarMain(listTitle[_currentIndex]),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: _currentIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() {
                  _currentIndex = index;
                }),
            items: List.generate(
              listTitle.length,
              (index) => BottomNavyBarItem(
                  icon: Icon(listIcon[index]),
                  title: Text(listTitle[index]),
                  activeColor: buttonColor,
                  inactiveColor: Colors.grey[700]),
            )));
  }
}
