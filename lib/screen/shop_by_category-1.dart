import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';
import 'package:myfirstapp/widget/shopcard.dart';

class ShopOne extends StatefulWidget {
  const ShopOne({super.key});

  @override
  State<ShopOne> createState() => _ShopOneState();
}

List<Map<String, String>> ShopCardData = [
  {"title": "Fishes", "subtitle": "From Sea"},
  {"title": "Meats", "subtitle": "Organic"},
  {"title": "Vegetables", "subtitle": "Organic"},
  {"title": "Fruits", "subtitle": "Fresh & Organic"},
  {"title": "Dry Fruits", "subtitle": " Fresh & Organic"},
  {"title": "Chiness Food", "subtitle": " Fresh & Organic"},
];

class _ShopOneState extends State<ShopOne> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}
  void navigateToCategoryScreen(String categoryTitle) {
    switch (categoryTitle) {
      case "Fishes":
        Navigator.push(context, MaterialPageRoute(builder: (context) => FishesScreen()));
        break;
      case "Meats":
        Navigator.push(context, MaterialPageRoute(builder: (context) => MeatScreen()));
        break;
      case "Vegetables":
        Navigator.push(context, MaterialPageRoute(builder: (context) => VegetablesScreen()));
        break;
      case "Fruits":
        Navigator.push(context, MaterialPageRoute(builder: (context) => FruitsScreen()));
        break;
        case "Dry Fruits":
        Navigator.push(context, MaterialPageRoute(builder: (context) => DryFruitsScreen()));
        break;
        case "Chiness Food":
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChinessFoodScreen()));
        break;
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 200,
            leadingWidth: 70,
            backgroundColor: Lightblue,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey, Hilal",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        "Shop",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 50,
                          fontWeight: FontWeight.w300,
                          color: headingcolor,
                        ),
                      ),
                      Text(
                        "By Category",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          color: headingcolor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150.0),
                        child: InkWell(
                            onTap: onSearchIconTap, child: Icon(Icons.search)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 150.0),
                child: InkWell(
                  onTap: onShoppingBagIconTap,
                  child: Icon(Icons.shopping_bag_outlined),
                ),
              )
            ],
          ),
          body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ShopCard(
                title: ShopCardData[index]["title"]!,
                subtitle: ShopCardData[index]["subtitle"]!,
                onTap:() {
                  navigateToCategoryScreen(ShopCardData[index]["title"]!);
                }
              );
            },
            itemCount: ShopCardData.length,
          ),),
    );
  }
}
