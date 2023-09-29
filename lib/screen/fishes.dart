import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';
import 'package:myfirstapp/widget/cart_module.dart';
import 'package:scoped_model/scoped_model.dart';

class Fishes extends StatefulWidget {
  const Fishes({Key? key}) : super(key: key);

  @override
  State<Fishes> createState() => _FishesState();
}

class _FishesState extends State<Fishes> {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Clown Fish",
        subtitle: "Fresh From Sea",
        cost: 36.0,
        imagepath:
            "assets/images/404-4048472_clown-fish-png-image-file-clown-fish-png.png",
        qty: 1),
    Product(
        id: 2,
        title: "Gold Fish",
        subtitle: "Fresh From Sea",
        cost: 90.0,
        imagepath:
            "assets/images/415-4155703_goldfish-png-transparent-image-gold-fish-images-png.png",
        qty: 1),
    Product(
        id: 3,
        title: "Haddock Fish",
        subtitle: "Fresh From Sea",
        cost: 80.0,
        imagepath:
            "assets/images/png-clipart-pollock-pollack-atlantic-cod-haddock-shoal-of-fish-animals-seafood.png",
        qty: 1),
    Product(
        id: 4,
        title: "Salmon Fish",
        subtitle: "Fresh From Sea",
        cost: 60.0,
        imagepath:
            "assets/images/png-clipart-rainbow-trout-chinook-salmon-atlantic-salmon-coho-salmon-other-templates-animals-seafood.png",
        qty: 1),
    Product(
      id: 5,
      title: "Perch",
      subtitle: " Fresh From Sea",
      cost: 60.0,
      imagepath:
          "assets/images/png-transparent-northern-pike-european-perch-freshwater-fish-angling-fish-animals-seafood-fauna.png",
      qty: 1,
    ),
    Product(
      id: 6,
      title: "Tuna Fish",
      subtitle: " Fresh From Sea",
      cost: 70.0,
      imagepath:
          "assets/images/378-3781643_pure-fresh-tuna-steaks-fresh-tuna-fish-png.png",
      qty: 1,
    ),
  ];

  void onSearchIconTap() {}
  void onShoppingBagIconTap() {}
  void onBackButtonTap() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor:Darkblue,
        title: Text("Big and Small Fishes"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body:
          GridView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: _products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
            itemBuilder: (context, index){
              return ScopedModelDescendant<CartModel>(
                  builder: (context, child, model) {
                return Card( child: Column( children: <Widget>[
                  Image.asset(_products[index].imagepath, height: 100, width: 130,),
                  Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(_products[index].subtitle),
                Text("\$${_products[index].cost.toStringAsFixed(2)}"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                          child: Text("Add To Cart"),
                          onPressed: () => model.addProduct(_products[index])),
                  )
                ]));
              });
            },
          ),

      //     ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //       builder: (context, child, model) {
      //         return ListTile(
      //             leading: Image.network(_products[index].imagepath),
      //             title: Text(_products[index].title),
      //             subtitle:
      //                 Text("\$${_products[index].cost.toStringAsFixed(2)}"),
      //             trailing: ElevatedButton(
      //                 child: Text("Add"),
      //                 onPressed: () => model.addProduct(_products[index])));
      //       },
      //     );
      //   },
      // ),
    );
  }
}
