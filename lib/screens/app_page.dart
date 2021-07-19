import 'package:coffee/screens/app_page/contact_comment.dart';
import 'package:coffee/screens/app_page/setting_page.dart';
import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  List listSupport = [
    {
      'icon': Icons.star_outline_rounded,
      'title': 'Đánh giá đơn hàng',
      'screen': SettingPage()
    },
    {
      'icon': Icons.chat_bubble_outline,
      'title': 'Liên hệ và góp ý',
      'screen': ContactAndComment()
    },
  ];
  List listAccount = [
    {
      'icon': Icons.person_outline_rounded,
      'title': 'Thông tin cá nhân',
      'screen': SettingPage()
    },
    {
      'icon': Icons.sanitizer,
      'title': 'Địa chỉ đã lưu',
      'screen': SettingPage()
    },
    {
      'icon': Icons.settings_outlined,
      'title': 'Cài đặt',
      'screen': SettingPage()
    },
    {
      'icon': Icons.single_bed_outlined,
      'title': 'Đăng nhập',
      'screen': SettingPage()
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(size.width * 0.03),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              service(size),
              support(context, size, listSupport),
              account(context, size, listAccount)
            ],
          ),
        ),
      ),
    );
  }
}

Widget service(Size size) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: size.width * 0.03,
      ),
      textTile('Tiện ích'),
      SizedBox(
        height: 5,
      ),
      Row(
        children: [
          card(
              'Lịch sử đơn hàng',
              Icon(
                Icons.description_outlined,
                color: buttonColor,
              ),
              size),
          card(
              'Điều khoản',
              Icon(
                Icons.admin_panel_settings_outlined,
                color: Colors.purple,
              ),
              size),
        ],
      ),
      Row(
        children: [
          card(
              'Nhạc đang phát',
              Icon(
                Icons.music_note_rounded,
                color: Colors.lightGreen,
              ),
              size),
        ],
      ),
    ],
  );
}

Widget support(BuildContext context, Size size, List list) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: size.width * 0.03),
      textTile('Hỗ trợ'),
      SizedBox(
        height: 5,
      ),
      item(context, size, list)
    ],
  );
}

Widget account(BuildContext context, Size size, List list) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: size.width * 0.03),
      textTile('Tài khoản'),
      SizedBox(
        height: 5,
      ),
      item(context, size, list)
    ],
  );
}

Widget item(BuildContext context, Size size, List list) {
  return Card(
    child: Container(
      child: Column(
          children: List.generate(
              list.length,
              (index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list[index]['screen']),
                      );
                    },
                    child: Container(
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
                                  width: index != list.length - 1 ? 0.2 : 0))),
                      child: Row(
                        children: [
                          Icon(
                            list[index]['icon'],
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(child: Text(list[index]['title'])),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                  ))),
    ),
  );
}

Widget card(String title, Icon icon, Size size) {
  return Expanded(
    child: Card(
      child: Container(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              )
            ],
          )),
    ),
  );
}

Widget textTile(String title) {
  return Text(
    title,
    style: TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
  );
}
