import 'package:flutter/material.dart';
import 'package:myfirstapp/screen/Category2.dart';
import 'package:myfirstapp/screen/Category_one.dart';
import 'package:myfirstapp/screen/fishes.dart';
import 'package:myfirstapp/widget/cart_module.dart';
import 'package:myfirstapp/widget/cart_page.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel model = CartModel(); // Create an instance of CartModel

    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: Categoryone(),
        routes: {'/cart': (context) => CartPage()},
      ),
    );
  }
}
