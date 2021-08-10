import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class MainMenuHeader extends StatelessWidget {
  const MainMenuHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: getProportionateScreenHeight(35.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Искать",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(10.0),
                    horizontal: getProportionateScreenHeight(4.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
