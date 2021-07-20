import 'package:coffee/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List store = [
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address2.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address3.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống',
      'price': '365.000'
    },
  ];
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
                color: greyColor, borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: isSearch
                      ? TextFormField(
                          autofocus: true,
                          cursorColor: buttonColor,
                          onChanged: (val) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Tìm kiếm theo quận huyện',
                            contentPadding: EdgeInsets.only(bottom: 3),
                          ),
                        )
                      : Text('Thực Đơn',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1.5), // changes position of shadow
                    ),
                  ]),
              child: Center(
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 17,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1.5), // changes position of shadow
                    ),
                  ]),
              child: Center(
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                  size: 17,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Container(
          height: size.height,
          child: Scrollbar(
            thickness: 5,
            radius: Radius.circular(5),
            hoverThickness: 10,
            child: ListView.builder(
                itemCount: store.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03, vertical: size.width * 0.05),
                itemBuilder: (context, index) {
                  return Item(
                    title: store[index]['title'],
                    description: store[index]['description'],
                    image: store[index]['image'],
                    price: store[index]['price'],
                  );
                }),
          ),
        ));
  }
}

class Item extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String price;

  Item(
      {required this.image,
      required this.description,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(size.width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toUpperCase(),
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Text(
                      description,
                      softWrap: true,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    'Cách đây ' + price + ' Km',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                height: 90,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
    );
  }
}
