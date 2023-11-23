import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: clipper_custom(),
  ));
}

class clipper_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper_custom"),
      ),
      body: ListView(
        children: [
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(
              child: Image.asset("assets/images/uzui.jpg"),
              height: 200,
              width: 100,
              color: Colors.teal,
            ),
          ),
          ClipPath(
            clipper: StarClipper(6),
            child: Container(
              child: Image.asset("assets/images/trip.jpg"),
              height: 700,
              width: 350,
              color: Colors.teal,
            ),
          ),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              child: Image.asset("assets/images/uzui.jpg"),
              height: 200,
              width: 100,
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
