import 'package:barber_shop_app/components/hairdresser_card.dart';
import 'package:barber_shop_app/pages/employer_screen.dart';
import 'package:barber_shop_app/pages/hairdresser_screen.dart';
import 'package:barber_shop_app/pages/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HairdresserScreen(),
    );
  }
}
