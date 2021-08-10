import 'package:b2b_marketplace/models/cart.dart';
import 'package:b2b_marketplace/models/product.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetion = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: SizedBox(
        width: getProportionateScreenWidth(widget.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                AspectRatio(
                  aspectRatio: widget.aspectRetion,
                  child: Container(
                    padding: EdgeInsets.all(
                      getProportionateScreenWidth(20),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      image: DecorationImage(
                        image: AssetImage(widget.product.images[0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    child: Icon(
                      Icons.favorite,
                      size: getProportionateScreenWidth(25.0),
                      // "assets/icons/price-tag.svg",)
                      color: isFavourite ? Colors.red : Color(0xFFB6B6B6),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      isFavourite ? isFavourite = false : isFavourite = true;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(3.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.product.price} с",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10.0),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0591EE),
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              child: Icon(
                                Icons.add_shopping_cart_outlined,
                                size: getProportionateScreenWidth(25.0),
                                // "assets/icons/price-tag.svg",)
                                color: Colors.orange,
                              ),
                            ),
                            onTap: () {
                              shoppingCart.add(widget.product);
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  content: const Text(
                                      'Товар добавлен в вашу корзину'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
