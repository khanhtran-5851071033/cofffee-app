import 'package:coffee/screens/app_page/setting_page.dart';
import 'package:coffee/widgets/appbar-normal.dart';
import 'package:flutter/material.dart';

class ContactAndComment extends StatefulWidget {
  @override
  _ContactAndCommentState createState() => _ContactAndCommentState();
}

class _ContactAndCommentState extends State<ContactAndComment> {
  List listOption = [
    {
      'icon': Icons.phone,
      'title': 'Tổng đài',
      'sub': '02871087088',
      'screen': SettingPage()
    },
    {
      'icon': Icons.email_outlined,
      'title': 'Email',
      'sub': 'hi@thecoffeehouse.com',
      'screen': SettingPage()
    },
    {
      'icon': Icons.public_outlined,
      'title': 'Website',
      'sub': 'hi@thecoffeehouse.com',
      'screen': SettingPage()
    },
    {
      'icon': Icons.face_outlined,
      'title': 'Facebook',
      'sub': 'facebook.com/The.Coffee.House.2014',
      'screen': SettingPage()
    },
    {
      'icon': Icons.announcement_outlined,
      'title': 'Gửi góp ý về ứng dụng',
      'sub': '',
      'screen': SettingPage()
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarNormal(context, 'Liên hệ và góp ý'),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: size.width * 0.03,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: List.generate(
                        listOption.length,
                        (index) => InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           listOption[index]['screen']),
                            // );
                          },
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.fromLTRB(
                              0,
                              size.width * 0.05,
                              size.width * 0.03,
                              size.width * 0.05,
                            ),
                            margin: EdgeInsets.only(left: size.width * 0.03),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey,
                                        width: index != listOption.length - 1
                                            ? 0.2
                                            : 0))),
                            child: Row(
                              children: [
                                Icon(
                                  listOption[index]['icon'],
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listOption[index]['title'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    index != listOption.length - 1
                                        ? Text(listOption[index]['sub'])
                                        : Container(),
                                  ],
                                )),
                                Icon(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
