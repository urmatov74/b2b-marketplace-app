import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> stories = [
      {"img": "assets/img/1.png", "title": "shop 1"},
      {"img": "assets/img/1.png", "title": "shop 2"},
      {"img": "assets/img/1.png", "title": "shop 3"},
      {"img": "assets/img/1.png", "title": "shop 4"},
      {"img": "assets/img/1.png", "title": "shop 5"},
      {"img": "assets/img/1.png", "title": "shop 5"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              stories.length,
              (index) => StoriesCard(
                img: stories[index]["img"],
                title: stories[index]["title"],
                press: () {},
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}

class StoriesCard extends StatelessWidget {
  const StoriesCard({
    Key key,
    @required this.img,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String img, title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(180),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: EdgeInsets.only(top: getProportionateScreenWidth(2)),
                  decoration: BoxDecoration(
                    // border: Border.all(width: 2, color: Colors.yellow),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
