import 'package:flutter/material.dart';
import 'package:flutter_application_lec6/my_card.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [            
           MyCard(imgPath: 'https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-vegetarian-pan.png',title: 'Vegetable Pizza' ),
           MyCard(imgPath: 'https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-classic-pan.png',title: 'Cheese Pizza'),
           MyCard(imgPath: 'https://cdn.icon-icons.com/icons2/236/PNG/256/FastFood_FrenchFries_26372.png',title: 'Boxd of Fries'),
             ],
          ),
        ),
      ),
        ),
        );
  
  }
  }

