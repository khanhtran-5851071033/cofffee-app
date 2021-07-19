import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  bool isMap = false;
  List store = [
    {
      'image': 'assets/images/address1.jpg',
      'address': '343 Lê Văn Sỹ',
      'numberKm': '3'
    },
    {
      'image': 'assets/images/address2.jpg',
      'address': '177, Lê Hồng Phong',
      'numberKm': '3'
    },
    {
      'image': 'assets/images/address3.jpg',
      'address': 'BB17, Trường Sơn',
      'numberKm': '3'
    },
    {
      'image': 'assets/images/address4.jpg',
      'address': '313, Nguyễn Thị Thập',
      'numberKm': '3'
    },
    {
      'image': 'assets/images/address5.jpg',
      'address': '22, Hoàng Hoa Thám',
      'numberKm': '3'
    },
    {
      'image': 'assets/images/address6.jpg',
      'address': '449, Lê văn Việt',
      'numberKm': '3'
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                  color: greyColor, borderRadius: BorderRadius.circular(10)),
              child: Row(
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
                  Text('Tìm kiếm',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ],
              ),
            ),
            actions: [
              TextButton.icon(
                  onPressed: () {
                    setState(() {
                      isMap ? isMap = false : isMap = true;
                    });
                  },
                  icon: Icon(
                    isMap ? Icons.list_alt_rounded : Icons.map_outlined,
                    color: Colors.black,
                  ),
                  label: Text(
                    isMap ? 'Danh sách' : 'Bản đồ',
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                width: 10,
              ),
            ]),
        body: Container(
          height: size.height,
          child: Scrollbar(
            thickness: 5,
            radius: Radius.circular(5),
            hoverThickness: 10,
            child: ListView.builder(
                itemCount: store.length + 1,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03, vertical: size.width * 0.05),
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Các cửa hàng khác',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        )
                      : Item(
                          address: store[index - 1]['address'],
                          image: store[index - 1]['image'],
                          numberKm: store[index - 1]['numberKm'],
                        );
                }),
          ),
        ));
  }
}

class Item extends StatelessWidget {
  final String image;
  final String address;
  final String numberKm;

  Item({required this.image, required this.address, required this.numberKm});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(size.width * 0.03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                height: 90,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Expanded(
              child: Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The coffee house'.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      address,
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'Cách đây ' + numberKm + ' Km',
                      style: TextStyle(fontSize: 12),
                    )
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
