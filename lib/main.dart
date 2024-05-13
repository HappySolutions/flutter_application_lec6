import 'package:flutter/material.dart';

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
        IconButton(onPressed: (){}, icon: const Icon(Icons.facebook_sharp, 
        color: Colors.white,)),
      ],
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: const ButtonStyle(side: MaterialStatePropertyAll(BorderSide(color: Colors.orange))),
                    onPressed: (){}, child: const Text('Vegetable Pizza', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)),
                  OutlinedButton(
                     style: const ButtonStyle(side: MaterialStatePropertyAll(BorderSide(color: Colors.orange))),
                    onPressed: (){}, child: const Text('Cheese Pizza', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)),
                  OutlinedButton(
                     style: const ButtonStyle(side: MaterialStatePropertyAll(BorderSide(color: Colors.orange))),
                    onPressed: (){}, child: const Text('Fries', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)),
                ],
              ),
              Image.network('https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg',
              fit: BoxFit.cover,
              height: 500,
              width: 500,
              ),
    
              const Text('Hi, I\'m the Pizza Assistant,\n What can I help you order?',
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

