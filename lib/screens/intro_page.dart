import 'package:coffee/utils/button_style.dart';
import 'package:coffee/utils/colors.dart';
import 'package:coffee/utils/list_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List listImage = [
    'assets/images/background2.PNG',
    'assets/images/background3.PNG',
    'assets/images/background4.PNG',
    'assets/images/background5.PNG'
  ];
  List listNewsDetails = [];
  @override
  void initState() {
    listNewsDetails = listNews[0]['list'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
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
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
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
                button('Đăng nhập', () {
                  print('jjj');
                }),
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
              initialChildSize: .43,
              maxChildSize: 1,
              minChildSize: .4,
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
                      physics: BouncingScrollPhysics(),
                      children: [
                        Icon(
                          Icons.horizontal_rule_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
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
                        Container(
                          padding: EdgeInsets.all(size.width * 0.03),
                          height: 90,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Khám phá thêm',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    itemCount: listNews.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                          onTap: () {
                                            setState(() {
                                              for (var item in listNews) {
                                                item['isSelected'] = false;
                                              }
                                              listNews[index]['isSelected'] =
                                                  true;
                                              listNewsDetails =
                                                  listNews[index]['list'];
                                            });
                                          },
                                          child: tab(listNews[index]['title'],
                                              listNews[index]['isSelected']));
                                    }),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 600,
                          padding: EdgeInsets.all(size.width * 0.03),
                          child: GridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 18,
                              crossAxisSpacing: 10.0,
                              childAspectRatio: 8.0 / 10.5,
                              physics: BouncingScrollPhysics(),
                              children: List.generate(listNewsDetails.length,
                                  (index) {
                                return Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          listNewsDetails[index]['image'],
                                          height: 150,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 4),
                                          child: Text(
                                            listNewsDetails[index]['title'],
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 2,
                                            textScaleFactor: 1.1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_rounded,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              listNewsDetails[index]['time'],
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              })),
                        ),
                      ]),
                );
              })
        ],
      ),
    );
  }
}
