import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String imgPath;
  String title;

   MyCard({required this.imgPath, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(vertical: 10),
  child: Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: Colors.deepOrange,                
    child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, 
        children: <Widget>[
        Image.network(imgPath, height: 60, width: 60,
        fit: BoxFit.cover,),
        const SizedBox(width: 15,),
          Text(title, 
          style:const TextStyle(color: Colors.white, 
          fontWeight: FontWeight.bold,
        fontSize: 20, 
                    ),
                    ),
                 ],
                ),
    ),
            ),
);
  }
}