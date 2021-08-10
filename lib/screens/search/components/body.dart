import 'package:b2b_marketplace/components/default_button.dart';
import 'package:b2b_marketplace/models/cart.dart';
import 'package:b2b_marketplace/screens/explore/explore_screen.dart';
import 'package:b2b_marketplace/screens/search/components/shopping_cart_screen.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return shoppingCart.length != 0
        ? ShoppingCart()
        : Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(150.0)),
              child: Column(
                children: [
                  Text("Ваша корзина пуста",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18.0))),
                  SizedBox(height: getProportionateScreenHeight(30.0)),
                  Container(
                    height: getProportionateScreenHeight(180.0),
                    width: getProportionateScreenWidth(180.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/empty-cart.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20.0)),
                  Text(
                    "Добавьте товар из каталога",
                  ),
                  SizedBox(height: getProportionateScreenHeight(20.0)),
                  DefaultButton(
                    text: "Перейти в каталог",
                    pressed: () {
                      Navigator.popAndPushNamed(
                          context, ExploreScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          );
  }
}
