import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
    final Color? bgcolor;
   final Image? image;
  Widget? label;
  VoidCallback? onpressed;





Mywidget({required this.label, required this.bgcolor, required  this.image, required this.onpressed});
   @override
  Widget build(BuildContext context) {
     return Card (
       color: bgcolor,
       child: Column(
         children: [
           Container(
             child: image,
           ),
           ElevatedButton(onPressed: onpressed,
               child: label)
         ],
       )
     );
   }
}
