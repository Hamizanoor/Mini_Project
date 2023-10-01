import 'package:flutter/material.dart';

import 'package:myfirstapp/screen/home/home_view.dart';


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
        home: HomeView(),

        
        routes: {'/cart': (context) => CartPage()},
      ),
    );
  }
}