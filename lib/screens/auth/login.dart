import 'package:b2b_marketplace/constants.dart';
import 'package:b2b_marketplace/screens/auth/components/auth_styles.dart';
import 'package:b2b_marketplace/screens/main_menu/main_menu_screen.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String routeName = "login";
  final Function togScreen;

  const Login({Key key, this.togScreen}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

void validation() {
  final FormState _form = _formKey.currentState;
  if (_form.validate()) {
    print("Yes");
  } else {}
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(40.0),
          getProportionateScreenWidth(50.0),
          getProportionateScreenWidth(40.0),
          getProportionateScreenWidth(0.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Войти',
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(28.0),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Email",
                  style: kLabelStyle,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: getProportionateScreenHeight(65.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "Введите Email";
                      } else if (!regExp.hasMatch(value)) {
                        return "Email введен неверно";
                      }
                      return "";
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintText: 'Введите свой Email',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Пароль",
                  style: kLabelStyle,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: getProportionateScreenHeight(65.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "Введите пароль";
                      } else if (value.length < 6) {
                        return "Не менее 6 символов";
                      }
                      return "";
                    },
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: 'Введите свой пароль',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => print('Forgot Password Button Pressed'),
                child: Text(
                  'Забыли пароль?',
                  style: kLabelStyle,
                ),
              ),
            ),
            // _authBtn(() => Navigator.of(context).pushNamed(MainMenuScreen.routeName)),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  elevation: 5.0,
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .popAndPushNamed(MainMenuScreen.routeName);
                  // Navigator.of(context).pushNamed(MainMenuScreen.routeName);
                },
                child: Text(
                  'ВОЙТИ',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  '- ИЛИ -',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => print('Login with Facebook'),
                        child: Container(
                          height: getProportionateScreenHeight(50.0),
                          width: getProportionateScreenWidth(50.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/icons/facebook.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('Login with Google'),
                        child: Container(
                          height: getProportionateScreenHeight(50.0),
                          width: getProportionateScreenWidth(50.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/icons/google-logo.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () => widget.togScreen(),
              child: Column(
                children: [
                  Text(
                    'У вас еще нет аккаунта?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
