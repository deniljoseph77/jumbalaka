import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



void main(){
  runApp(MaterialApp(home:Gridview_6_Staggered() ,));
}

class Gridview_6_Staggered extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 5,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child:Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:AssetImage("assets/images/trip.jpg" ),
                        fit:BoxFit.fill ),
                  ),
                ) ),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 4,
                child:Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:AssetImage("assets/images/uzui.jpg" ),
                        fit:BoxFit.fill ),
                  ),
                ) ),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child:Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:AssetImage("assets/images/sky.jpg" ),
                        fit:BoxFit.fill ),
                  ),
                ) )
          ],
        ),
      ),
    );
  }
}
