import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';
import 'package:myfirstapp/widget/shopcard.dart';

class ShopOne extends StatefulWidget {
  const ShopOne({Key? key}) : super(key: key);

  @override
  State<ShopOne> createState() => _ShopOneState();
}

List<Map<String, String>> ShopCardData = [
  {"title": "Fishes", "subtitle": "From Sea", "imagepath": "assets/images/pngtree-rohu-carp-fish-png-png-image_6940208.png"},
  {"title": "Meats", "subtitle": "Organic", "imagepath": "assets/images/png-transparent-raw-meat-with-spices-red-meat-beef-steak-food-beef-meat-beef-roast-beef-supermarket.png"},
  {"title": "Vegetables", "subtitle": "Organic", "imagepath": "assets/images/png-clipart-vegetable-auglis-aedmaasikas-fresh-vegetables-template-natural-foods.png"},
  {"title": "Fruits", "subtitle": "Fresh & Organic", "imagepath": "assets/images/png-transparent-assorted-fruits-display-fruit-fruit-natural-foods-frutti-di-bosco-image-file-formats-thumbnail.png"},
  {"title": "Dry Fruits", "subtitle": " Fresh & Organic", "imagepath": "assets/images/Dry-Fruit-Healthy-Snack-PNG-Photos.png"},
  {"title": "Dairy Products", "subtitle": " Fresh & Organic", "imagepath": "assets/images/png-transparent-milk-dairy-products-dairy-farming-food-milk-food-cheese-eating.png"},
];

class _ShopOneState extends State<ShopOne> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          leadingWidth: 70,
          backgroundColor: Lightblue, // Correct color reference.
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
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: headingcolor,
                      ),
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: headingcolor,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: onSearchIconTap,
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            InkWell(
              onTap: onShoppingBagIconTap,
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),
        
        body: Padding(
          
          padding: const EdgeInsets.all(8.0),
          
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ShopCard(
                title: ShopCardData[index]["title"]!,
                subtitle: ShopCardData[index]["subtitle"]!,
                imagepath: ShopCardData[index]["imagepath"]!,
              );
            },
            itemCount: ShopCardData.length,
          ),
        ),
      ),
    );
  }
}
