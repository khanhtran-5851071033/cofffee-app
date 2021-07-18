import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:coffee/utils/colors.dart';
import 'package:coffee/widgets/appbar_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listImage = [
    'assets/images/background2.PNG',
    'assets/images/background3.PNG',
    'assets/images/background4.PNG',
    'assets/images/background5.PNG'
  ];
  int _currentIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: myColor,
        appBar: appbarHome('Chào bạn mới'),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(size.width * 0.03),
              padding: EdgeInsets.all(size.width * 0.03),
              height: size.height / 2.5,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    scale: 2.3,
                    alignment: Alignment.bottomCenter,
                    image: AssetImage('assets/images/background1.png'),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text(
                    'Đăng nhập',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sử dụng app để tích điểm và đổi những ưu đãi chỉ dành riêng cho thành viên bạn nhé !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        wordSpacing: 1.5,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text("Đăng nhập"),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(buttonColor),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )))),
                  Spacer(),
                  Container(
                    width: size.width,
                    padding: EdgeInsets.all(size.width * 0.03),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        Text('The Coffee House\'s Reward'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                          size: 13,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: .4,
                maxChildSize: .6,
                minChildSize: .2,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.1,
                          blurRadius: 5,
                          offset: Offset(0, -1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Icon(Icons.horizontal_rule_rounded),
                        Container(
                          margin: EdgeInsets.all(size.width * 0.03),
                          padding: EdgeInsets.all(size.width * 0.03),
                          width: size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: .5),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/icon1.jpg',
                                    width: 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Giao hàng')
                                ],
                              ),
                              Container(
                                width: .3,
                                height: 50,
                                color: Colors.grey,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/icon2.jpg',
                                    width: 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Mang đi')
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: size.width,
                          padding: EdgeInsets.all(size.width * 0.03),
                          child: ImageSlideshow(
                            width: double.infinity,
                            initialPage: 0,
                            indicatorColor: buttonColor,
                            indicatorBackgroundColor: Colors.white,
                            children: List.generate(
                              listImage.length,
                              (index) => ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  listImage[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onPageChanged: (value) {
                              print('Page changed: $value');
                            },
                            autoPlayInterval: 3000,
                          ),
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
          }),
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home_rounded),
                title: Text('Trang chủ'),
                activeColor: buttonColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.coffee,
                ),
                title: Text('Đặt hàng'),
                activeColor: buttonColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.store),
                title: Text('Cửa hàng'),
                activeColor: buttonColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.confirmation_num_outlined,
                ),
                title: Text('Ưu đãi'),
                activeColor: buttonColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.menu_rounded),
                title: Text('Khác'),
                activeColor: buttonColor,
                inactiveColor: Colors.grey),
          ],
        ));
  }
}