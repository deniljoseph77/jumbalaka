import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Grid_view_3() ,));
}

class Grid_view_3 extends StatelessWidget {
 var images = ["assets/images/field.jpg",
   "assets/images/happy.jpg",
   "assets/images/iceland.jpg",
   "assets/images/sky.jpg",
   "assets/images/trip.jpg"
 ];

 var name = ["Grass","Happy","switz","Bluesky", "Travel"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
      ),
      body: GridView.count(crossAxisCount: 2,children: List.generate(5,
              (index) => Card(
                child: Row(
                  children: [
                    Expanded(child: Image.asset(images[index])),
                    Text(name[index]),
                  ],
                ),
      ),
      ),
      ),
    );
  }
}
