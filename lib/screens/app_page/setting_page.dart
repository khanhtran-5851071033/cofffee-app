import 'package:coffee/widgets/appbar-normal.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List listSetting = [
    {'icon': Icons.notifications_active_outlined, 'title': 'Nhận thông báo'},
    {'icon': Icons.link_rounded, 'title': 'Liên kết tài khoản'},
    {'icon': Icons.info_outline_rounded, 'title': 'Về chúng tôi'},
  ];
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appbarNormal(context, 'Cài đặt'),
        body: Container(
          margin: EdgeInsets.all(size.width * 0.03),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        width: size.width,
                        child: Column(
                          children: List.generate(
                            listSetting.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          listSetting[index]['screen']),
                                );
                              },
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  size.width * 0.05,
                                  size.width * 0.03,
                                  size.width * 0.05,
                                ),
                                margin:
                                    EdgeInsets.only(left: size.width * 0.03),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey,
                                            width:
                                                index != listSetting.length - 1
                                                    ? 0.2
                                                    : 0))),
                                child: Row(
                                  children: [
                                    Icon(
                                      listSetting[index]['icon'],
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Expanded(
                                        child:
                                            Text(listSetting[index]['title'])),
                                    index == 0
                                        ? Container()
                                        : Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.black,
                                            size: 12,
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
