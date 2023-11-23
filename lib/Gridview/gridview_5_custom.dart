import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Gridview_5_custom(),));
}

class Gridview_5_custom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grind View Count "),
      ),
      body: GridView.custom(
          //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount),
          //gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent,
          //childrenDelegate: SliverChildListDelegate(
          //   [] OR  List.generate(length, (index) => null)
       //childrenDelegate: SliverChildBuilderDelegate((context, index) => null),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        childrenDelegate: SliverChildListDelegate(
            //[] OR
               List.generate(10, 
                       (index) => Row(
                         children: [
                           Expanded(child: Image.asset("assets/images/uzuisan.jpg")),
                         Text("Uzui san")
                         ],
                       ))),
       ));
  }
}
