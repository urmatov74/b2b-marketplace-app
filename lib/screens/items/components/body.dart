import 'package:b2b_marketplace/models/product.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final myControllerName = TextEditingController();
  final myControllerDescription = TextEditingController();
  final myControllerPrice = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myControllerName.dispose();
    myControllerDescription.dispose();
    myControllerPrice.dispose();
    super.dispose();
  }

  void addItem() {
    demoProducts.add(
      Product(
        title: myControllerName.text,
        description: myControllerDescription.text,
        price: double.parse(
          myControllerPrice.text,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Column(
            children: [
              TextField(
                controller: myControllerName,
              ),
              TextField(
                controller: myControllerDescription,
              ),
              TextField(
                controller: myControllerPrice,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(demoProducts.length);
                    addItem();
                  },
                  child: Text("Записать")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // onPressed: () => Navigator.pop(context),
          onPressed: () {
            print(demoProducts.length);
          },
        ));
  }
}
