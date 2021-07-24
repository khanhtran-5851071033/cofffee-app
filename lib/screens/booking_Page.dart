import 'package:coffee/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  ScrollController? _scrollController;
  double? _scrollPosition;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController?.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(_scrollListener);
    super.initState();
  }

  List store = [
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address1.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống. Nhập mã:CPSD289 (Áp dụng Giao tận nơi & Tự đến lấy) hãy để cà phê sửa đá thêm ngon đậm vị đồngÏ',
      'price': '365.000'
    },
    {
      'image': 'assets/images/address3.jpg',
      'title': 'Thùng 24 lon cafe sửa đá',
      'description':
          'Hãy để cafe sửa nhà thơm ngon đậm vị đồng hành cùng nhịp sống',
      'price': '365.000'
    },
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
  void _showBottomSheet(BuildContext context, Size size, String title,
      String description, String image, String price) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return GestureDetector(
              // onTap: () => Navigator.of(context).pop(),
              child: Container(
                  color: Colors.transparent,
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.9,
                    minChildSize: 0.2,
                    maxChildSize: .9,
                    builder: (_, controller) {
                      return Stack(
                        children: [
                          Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child: ListView.builder(
                                itemCount: 1,
                                controller: controller,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          image,
                                          width: double.maxFinite,
                                          height: 400,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  title,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Icon(Icons
                                                    .favorite_border_outlined)
                                              ],
                                            ),
                                            Text('${price}Đ'),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(description)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: size.width,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: [
                                            Text('Yeu Cau Khac'),
                                            Text('Nhung tuy chon khac')
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          ),
                          Positioned(
                            top: 0,
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
                      );
                    },
                  )));
        });
  }

  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print('Position $_scrollPosition pixels');
    print(_scrollPosition == 0.0);
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
                            contentPadding: EdgeInsets.only(bottom: 3),
                          ),
                        )
                      : Text(
                          _scrollPosition == 0.0
                              ? 'Thực Đơn'
                              : 'Cà Phê Gói- Cà phê Uống Liền',
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
                controller: _scrollController,
                itemCount: store.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03, vertical: size.width * 0.05),
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Cà Phê Gói- Cà Phê Uống Liền',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            _showBottomSheet(
                              context,
                              size,
                              store[index - 1]['title'],
                              store[index - 1]['description'],
                              store[index - 1]['image'],
                              store[index - 1]['price'],
                            );
                          },
                          child: Item(
                            title: store[index - 1]['title'],
                            description: store[index - 1]['description'],
                            image: store[index - 1]['image'],
                            price: store[index - 1]['price'],
                          ),
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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 0.2,
              offset: Offset(0, 0.3), // changes position of shadow
            ),
          ]),
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
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
