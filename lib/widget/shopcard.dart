import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';

class ShopCard extends StatelessWidget {
  final String title;
  final String subtitle;

  ShopCard({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 50,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Image Icon (1).png",
              height: 100,
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Black1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: lightgrey,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
