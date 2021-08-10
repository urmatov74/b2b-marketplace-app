import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Banners extends StatefulWidget {
  Banners({Key key}) : super(key: key);

  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(200.0),
      child: Carousel(
        images: [
          AssetImage("assets/img/banner.jpg"),
          AssetImage("assets/img/banner2.jpg"),
          AssetImage("assets/img/banner3.png"),
        ],
        boxFit: BoxFit.cover,
        autoplay: true,
        dotSize: 5.0,
        indicatorBgPadding: 2.0,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
      ),
    );
  }
}
