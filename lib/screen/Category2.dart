import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';
import 'package:myfirstapp/widget/container_card.dart';

class Categorytwo extends StatefulWidget {
  const Categorytwo({super.key});

  @override
  State<Categorytwo> createState() => _CategorytwoState();
}

List<Map<String, String>> ContainerCardData = [
  {
    "title": " Big and Small Fishes",
    "subtitle": "Fresh From Sea",
    "cost": "\$36/KG",
    "imagepath":
        "assets/images/png-transparent-raw-meat-venison-halal-goat-meat-broiler-meet-food-beef-chicken-meat.png"
  },
  {
    "title": "Halal Meats",
    "subtitle": "Organic and Fresh",
    "cost": "\$90/KG",
    "imagepath":
        "assets/images/png-transparent-raw-meat-with-spices-red-meat-beef-steak-food-beef-meat-beef-roast-beef-supermarket.png"
  },
  {
    "title": "Vegetables",
    "subtitle": "Organic and Fresh",
    "cost": "\$80/KG",
    "imagepath":
        "assets/images/fruits-vegetables-exotic-veggies-simply-organic-cart-2.png"
  },
  {
    "title": "Fruits",
    "subtitle": "Fresh & Organic",
    "cost": "\$90/KG",
    "imagepath":
        "assets/images/png-clipart-assorted-fruits-seedless-fruit-food-gift-basket-fruit-natural-foods-dried-fruit-thumbnail.png"
  },
  {
    "title": "Dry Fruits",
    "subtitle": " Fresh & Organic",
    "cost": "\$60/KG",
    "imagepath": "assets/images/Dry-Fruit-Healthy-Snack-PNG-Photos.png"
  },
  {
    "title": "Dairy Products",
    "subtitle": " Fresh & Organic",
    "cost": "\70/KG",
    "imagepath":
        "assets/images/png-clipart-buttermilk-dairy-products-kheer-chese-food-cheese-thumbnail.png"
  },
];

class _CategorytwoState extends State<Categorytwo> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}

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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 120),
                      child: InkWell(
                        onTap: onSearchIconTap,
                        child: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: InkWell(
                onTap: onShoppingBagIconTap,
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionChip(
                      elevation: 5.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Meat and Fishes'),
                      onPressed: () {},
                      backgroundColor: lightyellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 5.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Vegetables'),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Fruits'),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("Dry Fruits"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("Dairy Products"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: ContainerCardData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ContainerCard(
                      title: ContainerCardData[index]["title"]!,
                      subtitle: ContainerCardData[index]["subtitle"]!,
                      cost: ContainerCardData[index]["cost"]!,
                      imagepath: ContainerCardData[index]["imagepath"]!,
                    );
                  },
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
