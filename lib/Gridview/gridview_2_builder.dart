import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Gridview_2_builder(),));
}

class Gridview_2_builder extends StatelessWidget {
  var name =[
    "sliva", "Uzui", "Tangiro"
  ];
  var image = [
    "assets/cities/canada.jpg",
    "assets/cities/london.jpg",
    "assets/cities/sweden.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.all(20),
      child:GridView.builder(
        itemCount: 3,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context,index){
            return Column(
              children: [
               Image.asset(image[index],height: 300,width: 200,),

                Text(name[index],style: TextStyle(color: Colors.white),)
              ],
            );
        }) ,
      ),
    );
  }
}
