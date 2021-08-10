import 'package:b2b_marketplace/screens/auth/components/auth_styles.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class Register extends StatefulWidget {
  final Function togScreen;

  Register({Key key, this.togScreen}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

class _RegisterState extends State<Register> {
  void validation() async {
    final FormState _form = _formKey.currentState;
    if (_form.validate()) {
      print("Yes");
    } else {
      print("No");
      widget.togScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: getProportionateScreenWidth(30),
                  color: Colors.white,
                ),
                onPressed: () => widget.togScreen(),
              )
            ],
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(40.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(28.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
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
                              return "Неправильный Email";
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
                            contentPadding: EdgeInsets.only(
                                top: getProportionateScreenHeight(14.0)),
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
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: 'Введите свой пароль',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10.0)),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5.0,
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        validation();
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Зарегистрироваться',
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
                  ),
                  SizedBox(height: getProportionateScreenHeight(90.0)),
                  GestureDetector(
                    onTap: () => widget.togScreen(),
                    child: Column(
                      children: [
                        Text(
                          'Уже есть аккаунт?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Войти',
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
          )
        ],
      ),
    );
  }
}
