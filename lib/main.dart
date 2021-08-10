import 'package:b2b_marketplace/constants.dart';
import 'package:b2b_marketplace/screens/main_menu/main_menu_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(MyApp());

//  async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "San Francisco",
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MainMenuScreen.routeName,
      routes: routes,
    );
  }
}
