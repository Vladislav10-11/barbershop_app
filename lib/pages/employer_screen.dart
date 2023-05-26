import 'package:barber_shop_app/components/hairdresser_card.dart';
import 'package:barber_shop_app/pages/hairdresser_screen.dart';
import 'package:flutter/material.dart';

class EmployerScreen extends StatefulWidget {
  final Hairdresser item;
  const EmployerScreen({super.key, required this.item});

  @override
  State<EmployerScreen> createState() => _EmployerScreenState();
}

class _EmployerScreenState extends State<EmployerScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.more_horiz)],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.4,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.item.image,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: size.height * 0.6,
            width: size.width,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      widget.item.type,
                      style: TextStyle(color: Colors.orange),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      thickness: 5,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.item.price,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.item.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          widget.item.rate.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff464646), width: 1.2),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Book Now',
                      style: TextStyle(
                          color: Colors.white,
                          height: 1.7,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  'About',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.item.text,
                  style: TextStyle(color: Colors.white),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
