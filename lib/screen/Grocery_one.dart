import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';
import 'package:myfirstapp/widget/card_item.dart';
import 'package:myfirstapp/widget/custom_search%20bar.dart';

class GroceryOne extends StatefulWidget {
  const GroceryOne({super.key});

  @override
  State<GroceryOne> createState() => _GroceryOneState();
}

List<String> cardimages = [
  "assets/images/Banner Card.png",
  "assets/images/Banner Card (1).png",
  "assets/images/Banner Card (2).png",
];
List<Map<String, String>> cardItemsData = [
  {
    "title": "Fresh Mango",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/manggo.png"
  },
  {
    "title": "Green Apple",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath":
        "assets/images/png-clipart-apple-granny-smith-flavor-green-apple-natural-foods-food.png"
  },
  {
    "title": "Fresh Kiwi",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/kiwi.png"
  },
    {
    "title": "Cherry",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/1026.png"
  },
    {
    "title": "StrawBerry",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/png-clipart-strawberry-fruit-strawberry-thumbnail.png"
  },
];
List<Map<String, String>> teaItemsData = [
  {
    "title": "Green Tea",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/114-1148485_green-tea-png-pic-green-tea-cup-png.png"
  },
  {
    "title": "Black coffee",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath":
        "assets/images/Vlg8de-coffee-mug.png"
  },
      {
    "title": "Brownie Piece",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/png-transparent-two-chocolate-brownies-fudge-cake-chocolate-brownie-milk-bakery-chocolate-brownies-recipe-frozen-dessert-cake.png"
  },
  {
    "title": "Kashmeri Tea",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/5a547aedab499.png"
  },
    {
    "title": "Brownie CupCake",
    "subtitle": "Organic",
    "cost": "Unit\$12",
    "imagepath": "assets/images/images.jpeg"
  },
   
    
];


class _GroceryOneState extends State<GroceryOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 70,
          backgroundColor: Lightblue,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Hey, Hilal",
              style: TextStyle(
                fontFamily: "Manrope",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              children: [
                Center(
                  child: CustomBar(
                    hintText: "Search Products or store",
                    prefixIcon: Icons.search,
                    prefixiconcolor: greyscale,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery to",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Grey,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Green Way 3000, Sylhet",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: greyscale,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Within",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Grey,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "1 Hour",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: greyscale,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12.0),
                  itemCount: 3,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12,
                    );
                  },
                  itemBuilder: (context, index) {
                    return buildCard(index, cardimages[index],
                        isFirstImage: index == 0);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: darkgrey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(width: 12),
                  itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardItem(
                        title: cardItemsData[index]["title"]!,
                        subtitle: cardItemsData[index]["subtitle"]!,
                        cost: cardItemsData[index]["cost"]!,
                        imagepath: cardItemsData[index]["imagepath"]!,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Deals on Tea and Brownie",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: darkgrey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(width: 12),
                  itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardItem(
                        title: teaItemsData[index]["title"]!,
                        subtitle: teaItemsData[index]["subtitle"]!,
                        cost: teaItemsData[index]["cost"]!,
                        imagepath: teaItemsData[index]["imagepath"]!,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.home_sharp,
            color: lightyellow,
          ),
          backgroundColor: Colors.black,
          tooltip: "Home",
          elevation: 10,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_outlined),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(int index, String imagePath, {bool isFirstImage = false}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 120,
              width: isFirstImage ? 400 : 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      );
}
