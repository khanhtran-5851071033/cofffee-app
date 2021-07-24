import 'package:coffee/utils/list_privacy.dart';
import 'package:coffee/widgets/appbar-normal.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarNormal(context, 'Điều khoản'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    Text('ĐIỀU KHOẢN SỬ DỤNG', style: TextStyle(fontSize: 12)),
              ),
              Text('THE COFFEE HOUSE DELIVERY',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(size.width * 0.04),
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      listPrivacy.length,
                      (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listPrivacy[index]['title'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(listPrivacy[index]['content'],
                                  style: TextStyle(fontSize: 10)),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
