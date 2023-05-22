import 'package:barber_shop_app/components/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HairdresserCard extends StatelessWidget {
  final String name;
  final String type;
  final String price;
  final String image;
  final double rate;
  final Function button;
  HairdresserCard({
    super.key,
    required this.name,
    required this.type,
    required this.price,
    required this.image,
    required this.rate,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0),
      height: 217,
      width: 156,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff464646), width: 1.2),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      type.toUpperCase() ?? "",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$price \$',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 17,
                        ),
                        Text(
                          rate.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff464646), width: 1.2),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Book Now',
                    style: TextStyle(
                        color: Colors.white,
                        height: 1.7,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
