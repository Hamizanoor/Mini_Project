import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';

class ShopOne extends StatefulWidget {
  const ShopOne({super.key});

  @override
  State<ShopOne> createState() => _ShopOneState();
}

class _ShopOneState extends State<ShopOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 70,
          backgroundColor: Lightblue,
          title: Column(
            children: [
              Text("Shop"),


              
              Text("By Category"),
            ],
          ),
          
        ),
      ),
    );
  }
}
