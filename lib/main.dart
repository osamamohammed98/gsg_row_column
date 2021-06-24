import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sliderItem(),
                    _sliderItem(itemName: "1"),
                    _sliderItem(itemName: "2"),
                    _sliderItem(itemName: "3"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  "Loading ...",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                  _itemListView(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemListView({String title, String subtitle, String price}) {
    return Container(
      height: 65,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
      ),
      child: ListTile(
        dense: true,
        //todo this is leading
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.network(
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
        ),
        //todo this is title
        title: Text(title ?? "GSG TITle"),
        //todo this is subtitle
        subtitle: Row(
          children: [
            Text(subtitle ?? "GSG TITle"),
            SizedBox(
              width: 12,
            ),
            Text(price ?? "\$100"),
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.double_arrow_sharp,
              color: Colors.white,
            ),
          ],
        ),
        trailing: Column(
          children: [
            Icon(
              Icons.double_arrow_sharp,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text("\$100"),
          ],
        ),
      ),
    );
  }

  //todo this is slider item
  Widget _sliderItem({String itemName}) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 100,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Text(itemName ?? "GSG"),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
    );
  }
}
