import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainCard extends StatelessWidget {
  final String title;
  final String? param;
  final Color? color;
  const MainCard({
    super.key,
    required this.title,
    this.param,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.symmetric(vertical: 6.0),
      height: 58,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff464646), width: 1.2),
          borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            param?.toUpperCase() ?? "",
            style: TextStyle(
              color: color ?? Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
