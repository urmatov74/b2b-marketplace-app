import 'package:b2b_marketplace/components/default_button.dart';
import 'package:b2b_marketplace/components/product_card.dart';
import 'package:b2b_marketplace/models/cart.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({Key key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Column(
                children: [
                  ...List.generate(
                    shoppingCart.length,
                    (index) => ProductCard(
                      product: shoppingCart[index],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                width: double.infinity,
                child: DefaultButton(
                  text: "Очистить список",
                  pressed: () {
                    setState(() {
                      shoppingCart = [];
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
