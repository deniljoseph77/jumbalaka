import 'package:flutter/material.dart';

import 'Gridview/grid_view1.dart';

void main(){
  runApp(MaterialApp(home:TabbarEx() ,
    debugShowCheckedModeBanner:false ,
  theme: ThemeData(primarySwatch: Colors.green),));
}


class TabbarEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold (
        appBar: AppBar(
          title: Text("Chats"),
        bottom: TabBar(tabs: [
          Text("Chat"),
          Text("Community"),
          Text("updates"),
          Text("Call"),
        ],),
        ),
        body: TabBarView(children:[
          Gridview_1(),
          Text("jawan")

        ] ),
      ),
    );
  }


}
