import 'package:coffee/utils/colors.dart';
import 'package:coffee/utils/list_level.dart';
import 'package:flutter/material.dart';

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  bool isPoint = true;
  bool isPromotion = false;

  List listrank = [];
  @override
  void initState() {
    listrank = listLevel[0]['list'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            InkWell(
                splashColor: Colors.white,
                focusColor: Colors.white,
                hoverColor: Colors.white,
                highlightColor: Colors.white,
                onTap: () {
                  setState(() {
                    isPoint = true;
                    isPromotion = false;
                  });
                },
                child: tab('Tích điểm', isPoint)),
            InkWell(
                splashColor: Colors.white,
                focusColor: Colors.white,
                hoverColor: Colors.white,
                highlightColor: Colors.white,
                overlayColor: MaterialStateProperty.all<Color>(Colors.white),
                onTap: () {
                  setState(() {
                    isPoint = false;
                    isPromotion = true;
                  });
                },
                child: tab('Đổi ưu đãi', isPromotion)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(size.width * 0.03),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  gradient: new LinearGradient(
                      colors: [
                        Color(0xffbdc3c7),
                        greyColor,
                      ],
                      stops: [
                        0.0,
                        1.0
                      ],
                      begin: FractionalOffset.topRight,
                      end: FractionalOffset.bottomLeft,
                      tileMode: TileMode.repeated)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03, vertical: size.width * 0.08),
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.brown,
                          buttonColor,
                        ],
                        stops: [
                          0.0,
                          1.0
                        ],
                        begin: FractionalOffset.topRight,
                        end: FractionalOffset.topLeft,
                        tileMode: TileMode.repeated),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      'Sử dụng app để tích điểm và đổi những ưu đãi chỉ dành riêng cho thành viên bạn nhé !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          wordSpacing: 1.5,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Đăng nhập'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.width * 0.08),
                    child: Text(
                      'Thăng hạng dễ dàng Quyền lợi đa dạng & hấp dẫn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        wordSpacing: 1.5,
                        height: 1.2,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        itemCount: listLevel.length,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: Colors.white,
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            onTap: () {
                              setState(() {
                                for (var item in listLevel) {
                                  item['isSelected'] = false;
                                }
                                listLevel[index]['isSelected'] = true;
                                listrank = listLevel[index]['list'];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      listLevel[index]['isSelected'] ? 10 : 5),
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: listLevel[index]['isSelected']
                                          ? .3
                                          : 0,
                                      color: listLevel[index]['isSelected']
                                          ? Colors.grey
                                          : Colors.white)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: listLevel[index]['isSelected']
                                        ? 55
                                        : 50,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Spacer(),
                                            Container(
                                              width: 3,
                                              height: 3,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Container(
                                              width: 6,
                                              height: 3,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 5,
                                              height: 5,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 3,
                                              height: 3,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Container(
                                              width: 6,
                                              height: 3,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Container(
                                              width: 3,
                                              height: 3,
                                              color: Colors.white,
                                            ),
                                            Spacer(),
                                            Text(
                                              'TCH',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: new LinearGradient(
                                            colors: [
                                              listLevel[index]['Color1'],
                                              listLevel[index]['Color2'],
                                            ],
                                            stops: [
                                              0.0,
                                              1.0
                                            ],
                                            begin: FractionalOffset.topLeft,
                                            end: FractionalOffset.bottomRight,
                                            tileMode: TileMode.repeated)),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    width: 50,
                                    child: Center(
                                      child: Text(
                                        listLevel[index]['level'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: listLevel[index]
                                                    ['isSelected']
                                                ? buttonColor
                                                : Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Column(
                      children: List.generate(
                          listrank.length,
                          (i) => Container(
                                padding: EdgeInsets.all(size.width * 0.04),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                            width: i == listrank.length - 1 ||
                                                    listrank.length == 1
                                                ? 0
                                                : 1,
                                            color:
                                                Colors.grey.withOpacity(.5)))),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      listrank[i]['assets'],
                                      width: 35,
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(child: Text(listrank[i]['title']))
                                  ],
                                ),
                              )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tab(String title, bool isSelected) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
    decoration: BoxDecoration(
        color: isSelected ? greyColor : Colors.white,
        borderRadius: BorderRadius.circular(20)),
    child: Text(
      title,
      style: TextStyle(
          color: isSelected ? buttonColor : Colors.grey[700], fontSize: 14),
    ),
  );
}
