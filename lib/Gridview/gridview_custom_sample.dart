import 'package:flutter/material.dart';
import 'package:jumbalaka/gridview_using_refactor.dart';
void main(){
  runApp(MaterialApp(home: Grid_view_custom(),));
}

class Grid_view_custom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
          ),
        children:
          List.generate(20, (index) {
            return Mywidget(
                label: Text("Habibi Come to india"),
                bgcolor: Colors.lightBlue,
                image: Image.asset("assets/images/field.jpg"),
                onpressed: (){});

          } ),

      ),

        );

  }
}
