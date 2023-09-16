import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_color.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cost;

  CardItem({
    required this.title,
    required this.subtitle,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Image Icon (1).png",
            height: 60, 
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
          Text(
            cost,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.right
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: lightgrey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Black20,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
