import 'package:barber_shop_app/components/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Icon(Icons.menu)],
        title: Text('Happiness salon'),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox(
                height: 200,
                width: size.width,
                child: Image.asset('assets/img.png', fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Hi, Matilda',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Welcome to the happiest salon in the world. We hope that your impression of our salon will be excellent. See you.',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Choose',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            MainCard(
              title: 'Hairdresser',
            ),
            MainCard(
              title: 'Makeup artist',
              param: 'New',
              color: Colors.orange,
            ),
            MainCard(
              title: 'Stylist',
              param: 'Bonus',
            ),
            MainCard(title: 'Сhildren\'s hairdresser'),
          ],
        ),
      ),
    );
  }
}
