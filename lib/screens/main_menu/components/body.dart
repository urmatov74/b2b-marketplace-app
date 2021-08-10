import 'package:b2b_marketplace/screens/main_menu/components/banners.dart';
import 'package:b2b_marketplace/screens/main_menu/components/new_product_list.dart';
import 'package:b2b_marketplace/screens/main_menu/components/popular_list.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Banners(),
            Banners(),
            SizedBox(height: getProportionateScreenWidth(10.0)),
            NewProductList(),
            SizedBox(height: getProportionateScreenWidth(10.0)),
            PopularList(),
          ],
        ),
      ),
    );
  }
}
