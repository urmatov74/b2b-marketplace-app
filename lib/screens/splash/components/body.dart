import 'package:b2b_marketplace/components/app_logo.dart';
import 'package:flutter/material.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentSlide = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Many delivery services",
      "image": "assets/img/delivery_man.png",
    },
    {
      "text": "Easy way to online shopping",
      "image": "assets/img/online-shop.png",
    },
    {
      "text": "Start a business with us",
      "image": "assets/img/business.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppLogo(),
          Expanded(
            flex: 5,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentSlide = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]['text'],
              ),
            ),
          ),
          Spacer(),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildSlider(index: index),
                  ),
                ),
                Spacer(),
                DefaultButton(
                  text: "Continue",
                  pressed: () {
                    // Navigator.pushNamed(context, MainMenuScreen.routeName);
                  },
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildSlider({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentSlide == index ? 16 : 6,
      decoration: BoxDecoration(
        color: currentSlide == index ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
