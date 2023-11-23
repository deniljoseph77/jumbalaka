import 'dart:math';

import 'package:flutter/material.dart';



void main(){
  runApp(MaterialApp(home:Grid_view_4() ,));
}

class Grid_view_4 extends StatelessWidget {
  var images = ["assets/images/field.jpg",
    "assets/images/happy.jpg",
    "assets/images/iceland.jpg",
    "assets/images/sky.jpg",
    "assets/images/trip.jpg"
  ];

  var name = ["Grass", "Happy", "switz", "Bluesky", "Travel"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: GridView.extent(
            maxCrossAxisExtent: 300,
        crossAxisSpacing: 150,
        mainAxisSpacing: 100,
        children: List.generate(5,
    (index) => Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    ),
    child: Padding(
      padding:  EdgeInsets.all(12),
      child: Column(
      children: [
          Expanded(child: Image.asset(images[index],height: 100,width: 100,)),
      ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green
          ),
      onPressed: (){},
      icon: Icon(Icons.add_shopping_cart),
      label: Text("Get Now"), ),
      ],
      ),
    ),
    ),
    ),
    ),
      ),
    );
  }
}