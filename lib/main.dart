import 'package:flutter/material.dart';

void main() {
  var cardList = [CardItem('https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-vegetarian-pan.png', 'Vegetable Pizza'),
  CardItem('https://cdn.romanspizza.co.za/images/root/v2/pizza/pizza-classic-pan.png', 'Cheese Pizza'),
  CardItem('https://cdn.icon-icons.com/icons2/236/PNG/256/FastFood_FrenchFries_26372.png', 'Box of Fries')];
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [            
              Container(
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
                child: Image.network(cardList[0].imgLink,
                fit: BoxFit.contain,),
              ),
              const SizedBox(width: 50,),
                const Text('Vegetable Pizza', 
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold, 
                ),
                ),
             ],
            ),
          ),
          Container(
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
              Flexible(
                child: Image.network(cardList[1].imgLink),
              ),
              const SizedBox(width: 50,),
                const Text('Cheese Pizza', 
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold, 
                ),
                ),
             ],
            ),
          ),
          Container(
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
              Flexible(
                child: Image.network(cardList[2].imgLink),
              ),
              const SizedBox(width: 50,),
                const Text('Box of Fries', 
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold, 
                ),
                ),
             ],
            ),
          ),
          
            ],
          ),
        ),
          ),
        ),
        ),
        );
}

class CardItem{
String imgLink = '';
String itemText = '';
CardItem(this.imgLink, this.itemText);
}


