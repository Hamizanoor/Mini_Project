// import 'package:flutter/material.dart';
// import 'package:myfirstapp/constants/app_color.dart';

// class ContainerCard extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 200.0,
//           width: MediaQuery.of(context).size.width * 0.9,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: 35,
//                 left: 20,
//                 child: Material(
//                   elevation: 10.0, 
//                   child: Container(
//                     height: 200,
//                     decoration: BoxDecoration(
//                       color: Black1,
//                       borderRadius: BorderRadius.circular(10.0),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.3), 
//                           offset: Offset(-10.0, 10.0),
//                           blurRadius: 2.0,
//                           spreadRadius: 4.0,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 0,
//                 left: 24,
//                 child: Card(
//                   elevation: 10.0,
//                   shadowColor: Colors.grey.withOpacity(0.5), 
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   child: Container(
//                     height: 167,
//                     width: 137,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       image: DecorationImage(
//                         fit: BoxFit.fill,
//                         image: AssetImage("assets/images/Rectangle 1309.png"),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 20,
//                 left: 200,
//                 child: Container(
//                   height: 150,
//                   width: 180,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Big & Small Fishes",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontFamily: "Manrope",
//                           fontWeight: FontWeight.w700,
//                           color: darkgrey,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         "Fresh from sea",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: "Manrope",
//                           fontWeight: FontWeight.w400,
//                           color: grey1,
//                         ),
//                       ),
//                       SizedBox(height: 35),
//                       Text(
//                         "Starting from",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontFamily: "Manrope",
//                           fontWeight: FontWeight.w400,
//                           color: Grey,
//                         ),
//                       ),
//                           SizedBox(height: 20),
//                       Text(
//                         "\$36/KG",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontFamily: "Manrope",
//                           fontWeight: FontWeight.w400,
//                           color:Lightblue,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
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