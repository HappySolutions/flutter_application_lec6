import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [            
           getContainer('https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-vegetarian-pan.png', 'Vegetable Pizza'),
           getContainer('https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-classic-pan.png', 'Cheese Pizza'),
           getContainer('https://cdn.icon-icons.com/icons2/236/PNG/256/FastFood_FrenchFries_26372.png', 'Boxd of Fries'),
     ],
          ),
        ),
          ),
        ),
        ),
        );
}

Widget getContainer(String imgPath, String title ){
return  Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 5,
                  ),
                ],            
              ),
             child:Row(
              mainAxisAlignment: MainAxisAlignment.start, 
             children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: Image.network(imgPath,
                fit: BoxFit.contain,),
              ),
              const SizedBox(width: 30,),
                Text(title, 
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold,
                fontSize: 20, 
                ),
                ),
             ],
            ),
          ) ;
}