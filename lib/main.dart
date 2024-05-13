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
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('WOW Pizza', style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.facebook_outlined, 
        color: Colors.white,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarm_rounded, 
        color: Colors.white,)),
      ],
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(onPressed: (){}, child: const Text('data')),
                  OutlinedButton(onPressed: (){}, child: const Text('data')),
                  OutlinedButton(onPressed: (){}, child: const Text('data')),
                ],
              ),
              Image.network('https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-vegetarian-pan.png',
              fit: BoxFit.fill,),
              const Text('Hi, I\'m the Pizza Assistant, What can I help you order?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),),    


           /* MyCard(imgPath: 'https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-vegetarian-pan.png',title: 'Vegetable Pizza' ),
           MyCard(imgPath: 'https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-classic-pan.png',title: 'Cheese Pizza'),
           MyCard(imgPath: 'https://cdn.icon-icons.com/icons2/236/PNG/256/FastFood_FrenchFries_26372.png',title: 'Boxd of Fries'), */
             ],
          ),
        ),
      ),
        ),
        );
  
  }
  }

