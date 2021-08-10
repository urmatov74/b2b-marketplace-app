import 'package:b2b_marketplace/screens/auth/components/bg_screen.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:b2b_marketplace/screens/auth/login.dart';
import 'package:b2b_marketplace/screens/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthScreen extends StatefulWidget {
  static String routeName = "auth";

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool switchScreen = true;
  void togScreen() {
    setState(() {
      switchScreen = !switchScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    SetSize().init(context);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              BgScreen(),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(40.0),
                  ),
                  child: getWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getWidget() {
    if (switchScreen) {
      return Login(togScreen: togScreen);
    }
    return Register(togScreen: togScreen);
  }
}
