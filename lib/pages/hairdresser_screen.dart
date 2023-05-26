import 'package:barber_shop_app/components/hairdresser_card.dart';
import 'package:barber_shop_app/pages/employer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Hairdresser {
  final String name;
  final String type;
  final String price;
  final String image;
  final double rate;
  final String text;

  Hairdresser({
    required this.image,
    required this.name,
    required this.type,
    required this.price,
    required this.rate,
    required this.text,
  });
}

class HairdresserScreen extends StatefulWidget {
  const HairdresserScreen({super.key});

  @override
  State<HairdresserScreen> createState() => _HairdresserScreenState();
}

class _HairdresserScreenState extends State<HairdresserScreen> {
  final List<Hairdresser> hairdressers = [
    Hairdresser(
      image: 'assets/Anastasia.png',
      name: 'Anastasia',
      type: 'Top Master',
      price: '150 - 200',
      rate: 5.0,
      text:
          'Hi! my name is Anastasia. I am a hairdresser, stylist and just a master of my craft. My thing is the creation of complex long-term styling. See you later!',
    ),
    Hairdresser(
      image: 'assets/Anastasia.png',
      name: 'Anastasia',
      type: 'Top Master',
      price: '150 - 200',
      rate: 5.0,
      text:
          'Hi! my name is Anastasia. I am a hairdresser, stylist and just a master of my craft. My thing is the creation of complex long-term styling. See you later!',
    ),
    Hairdresser(
      image: 'assets/Anastasia.png',
      name: 'Anastasia',
      type: 'Top Master',
      price: '150 - 200',
      rate: 5.0,
      text:
          'Hi! my name is Anastasia. I am a hairdresser, stylist and just a master of my craft. My thing is the creation of complex long-term styling. See you later!',
    ),
    Hairdresser(
      image: 'assets/Anastasia.png',
      name: 'Anastasia',
      type: 'Top Master',
      price: '150 - 200',
      rate: 5.0,
      text:
          'Hi! my name is Anastasia. I am a hairdresser, stylist and just a master of my craft. My thing is the creation of complex long-term styling. See you later!',
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
                    crossAxisCount: 1,
                  ),
                  itemCount: hairdressers.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(hairdressers[index].image),
                            Text(
                              hairdressers[index].name,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 17,
                                ),
                                Text(
                                  hairdressers[index].rate.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EmployerScreen(
                                        item: hairdressers[index]),
                                  ),
                                );
                              },
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
