// import 'package:flutter/material.dart';
// import 'package:myfirstapp/constants/app_color.dart';
// import 'package:myfirstapp/widget/cart_item.dart';

// class Fishes extends StatefulWidget {
//   const Fishes({super.key});

//   @override
//   State<Fishes> createState() => _FishesState();
// }

// class _FishesState extends State<Fishes> {
//   void onSearchIconTap() {}
//   void onShoppingBagIconTap() {}

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.only(bottom: 50.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Big & Small Fishes",
//                     style: TextStyle(
//                       fontFamily: "Manrope",
//                       fontSize: 16,
//                       fontWeight: FontWeight.w400,
//                       color: darkgrey,
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   InkWell(
//                     onTap: onSearchIconTap,
//                     child: Icon(Icons.search),
//                   ),
                  
//                   InkWell(
//                     onTap: onShoppingBagIconTap,
//                     child: Icon(Icons.shopping_bag_outlined),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ActionChip(
//                         elevation: 8.0,
//                         padding: EdgeInsets.all(2.0),
//                         label: Text('Popular'),
//                         onPressed: () {},
//                         backgroundColor: lightyellow,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       ActionChip(
//                         elevation: 8.0,
//                         padding: EdgeInsets.all(2.0),
//                         label: Text('Low Price'),
//                         onPressed: () {},
//                         backgroundColor: Colors.white,
//                         shape: StadiumBorder(
//                           side: BorderSide(
//                             width: 1,
//                             color: greyscale,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       ActionChip(
//                         elevation: 8.0,
//                         padding: EdgeInsets.all(2.0),
//                         label: Text('Small Fishes'),
//                         onPressed: () {},
//                         backgroundColor: Colors.white,
//                         shape: StadiumBorder(
//                           side: BorderSide(
//                             width: 1,
//                             color: greyscale,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       ActionChip(
//                         elevation: 8.0,
//                         padding: EdgeInsets.all(2.0),
//                         label: Text("Big Fishes"),
//                         onPressed: () {},
//                         backgroundColor: Colors.white,
//                         shape: StadiumBorder(
//                           side: BorderSide(
//                             width: 1,
//                             color: greyscale,
//                           ),
//                         ),
//                       ),
//                       GridView.builder(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//                         itemCount: CartData.length,
//                          itemBuilder: (context, index) {
//                           final data = cartData[index];
//                            return Cartitem(icon: icon, title: title, onPressed: onPressed)
//                          })
                      
                      
//                     ],
//                   ),
                  
//                 ),
                
//               ),
//             ],
          
//           ),

//         ),
        
//       ),
//     );
//   }
// }
