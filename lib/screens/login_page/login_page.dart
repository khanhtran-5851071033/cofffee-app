import 'package:coffee/utils/button_style.dart';
import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: size.height,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/login.jpg',
                        width: double.infinity,
                        height: size.height / 3,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: AppBar().preferredSize.height - 15,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 32,
                            width: 32,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.all(size.width * 0.04),
                            decoration: BoxDecoration(
                                color: Colors.grey[700],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.close_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer()
                ],
              ),
            ),
            Positioned(
              top: size.height / 3.5,
              child: Container(
                width: size.width,
                height: size.height,
                padding: EdgeInsets.all(size.width * 0.03),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text('Chào mừng bạn đến với'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/icons/logo_h.png',
                      width: double.infinity,
                      height: 16,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: size.width,
                      height: 50,
                      child: TextFormField(
                        cursorColor: buttonColor,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: buttonColor, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            disabledBorder: InputBorder.none,
                            hintText: 'Nhập số điện thoại',
                            contentPadding: EdgeInsets.all(5),
                            prefixIcon: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/icons/vietnam.png',
                                    width: 15,
                                    height: 15,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(' +84   '),
                                  Container(
                                    height: 20,
                                    color: Colors.grey,
                                    width: 1,
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(child: buttonLogin('Đăng nhập', () {})),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width,
                      child: Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Hoặc'),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(child: buttonApple(() {})),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(child: buttonFb(() {})),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(child: buttonGg(() {})),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Tiếng Việt')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
