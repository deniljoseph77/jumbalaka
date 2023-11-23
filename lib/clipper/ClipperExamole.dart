import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:clipperExam() ,));
}

class clipperExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(widthFactor: 3, heightFactor: 3,
                child: Image.asset("assets/images/uzui.jpg")),
          ),
          ClipRRect(
            borderRadius:BorderRadius.circular(20) ,
            child:Image.asset("assets/images/uzui.jpg")),
          ClipOval(
            child: Image.asset("assets/images/uzui.jpg")),

        ],
      ),
    );
  }
}
