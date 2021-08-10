import 'package:b2b_marketplace/components/product_card.dart';
import 'package:b2b_marketplace/models/product.dart';
import 'package:b2b_marketplace/screens/items/new_items_screen.dart';
import 'package:b2b_marketplace/screens/main_menu/components/section_title.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Популярные",
          press: () => Navigator.of(context).pushNamed(NewItemsList.routeName),
        ),
        SizedBox(
          height: getProportionateScreenWidth(5.0),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
