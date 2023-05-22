import 'package:barber_shop_app/components/hairdresser_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HairdresserScreen extends StatefulWidget {
  const HairdresserScreen({super.key});

  @override
  State<HairdresserScreen> createState() => _HairdresserScreenState();
}

class _HairdresserScreenState extends State<HairdresserScreen> {
  final List<HairdresserCard> hairdressers = [
    HairdresserCard(
      name: 'Anastasia',
      type: 'Top Master',
      price: '150 - 200',
      image: 'assets/Anastasia.png',
      rate: 5.0,
      button: () {},
    ),
    HairdresserCard(
      name: 'Marina',
      type: 'Top Master',
      price: '150 - 200',
      image: 'assets/Marina.png',
      rate: 4.81,
      button: () {},
    ),
    HairdresserCard(
      name: 'Valeria',
      type: 'Top Master',
      price: '150 - 200',
      image: 'assets/Valeria.png',
      rate: 5.0,
      button: () {},
    ),
    HairdresserCard(
      name: 'Marina',
      type: 'Top Master',
      price: '150 - 200',
      image: 'assets/Marina.png',
      rate: 4.81,
      button: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.filter_alt,
          ),
        ],
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              'Hairdresser',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: hairdressers.length,
                itemBuilder: (context, index) {
                  return HairdresserCard(
                      name: hairdressers[index].name,
                      type: hairdressers[index].type,
                      price: hairdressers[index].price,
                      image: hairdressers[index].image,
                      rate: hairdressers[index].rate,
                      button: () {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
