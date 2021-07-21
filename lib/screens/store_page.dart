import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  final bool isSearch;

  StorePage({Key? key, required this.isSearch});
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
  List detailStore = [
    {'icon': Icons.near_me_outlined, 'title': ''},
    { 'icon': Icons.favorite_outline_rounded, 'title': 'Thêm vào danh sách yêu thích' },
    {'icon': Icons.call, 'title': 'Liên hệ'},
    {'icon': Icons.share_rounded, 'title': 'Chia sẻ với bạn bè'}
  ];
  void _showBottomSheet(BuildContext context, Size size, String image,
      String address, String km) {
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
                              color: Colors.white,
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
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.all(size.width * 0.04),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'The coffee house'.toUpperCase(),
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              address,
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Giờ mở cửa :  ' + km,
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Container(
                                        child: Column(
                                          children: List.generate(
                                              detailStore.length,
                                              (index) => ListTile(
                                                    leading: Container(
                                                      padding:
                                                          EdgeInsets.all(8),
                                                      decoration: BoxDecoration(
                                                          color: greyColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Icon(
                                                        detailStore[index]
                                                            ['icon'],
                                                        color: Colors.black,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    title: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Divider(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        Text(index == 0
                                                            ? address
                                                            : detailStore[index]
                                                                ['title']),
                                                        Divider()
                                                      ],
                                                    ),
                                                  )),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.all(size.width * 0.04),
                                        width: size.width,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/map.PNG',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
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
                          Positioned(
                              bottom: 0,
                              width: size.width,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: size.width,
                                    padding: EdgeInsets.all(size.width * 0.03),
                                    margin: EdgeInsets.all(size.width * 0.04),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: buttonColor),
                                    child: Column(
                                      children: [
                                        Text('Đặt sản phẩm',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        Text('Tự đến lấy tạo cửa hàng này',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  )))
                        ],
                      );
                    },
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: InkWell(
              onTap: () {
                widget.isSearch
                    ? print('')
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StorePage(isSearch: true)),
                      );
              },
              child: Container(
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
                      child: widget.isSearch
                          ? TextFormField(
                              autofocus: true,
                              cursorColor: buttonColor,
                              onChanged: (val) {
                                setState(() {
                                  store = store
                                      .where((element) =>
                                          element['address'].contains(val))
                                      .toList();
                                });
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
                          : Text('Tìm kiếm',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              widget.isSearch
                  ? TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Hủy',
                        style: TextStyle(color: buttonColor),
                      ))
                  : TextButton.icon(
                      onPressed: () {
                        setState(() {
                          isMap ? isMap = false : isMap = true;
                        });
                      },
                      icon: Icon(
                        isMap
                            ? Icons.format_list_bulleted_rounded
                            : Icons.map_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      label: Text(
                        isMap ? 'Danh sách' : 'Bản đồ',
                        style: TextStyle(color: Colors.black),
                      )),
              SizedBox(
                width: widget.isSearch ? 5 : 10,
              ),
            ]),
        body: Container(
          height: size.height,
          child: isMap ? Center( child: Text('Google Map'))
              : Scrollbar(
                  thickness: 5,
                  radius: Radius.circular(5),
                  hoverThickness: 10,
                  child: ListView.builder(
                      itemCount: store.length + 1,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                          vertical: size.width * 0.05),
                      itemBuilder: (context, index) {
                        return index == 0
                            ? widget.isSearch
                                ? Container()
                                : Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      'Các cửa hàng khác',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  )
                            : InkWell(
                                onTap: () {
                                  _showBottomSheet(
                                      context,
                                      size,
                                      store[index - 1]['image'],
                                      store[index - 1]['address'],
                                      store[index - 1]['numberKm']);
                                },
                                child: Item(
                                  address: store[index - 1]['address'],
                                  image: store[index - 1]['image'],
                                  numberKm: store[index - 1]['numberKm'],
                                ),
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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(size.width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
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
                  Expanded(
                    child: Text(
                      address,
                      softWrap: true,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
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
    );
  }
}
