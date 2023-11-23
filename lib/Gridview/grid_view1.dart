import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Gridview_1(),));
}

class Gridview_1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid_view"),),
     body: Padding(
       padding:  EdgeInsets.all(8.0),
       child: GridView(
         //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,mainAxisSpacing:20,crossAxisSpacing: 15 ),
         children:List.generate(25, (index) => Container( color: Colors.primaries[Random().nextInt(Colors.primaries.length)],            ///Card(
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.cake_outlined,size: 30,),
               Text("Cake", style: GoogleFonts.kalam(fontWeight: FontWeight.bold,fontSize: 20),),
               ],
             ),
           ),
         ),),
         // [
         // Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake_outlined,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake_rounded,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake_sharp,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake_rounded,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
         // Card(child: Center(child: Icon(Icons.cake_outlined,size: 20,),),),
         // ],
       ),
     ),
    );
  }
}
