import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Sliverexample() ,));
}

class Sliverexample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 6,
            title: Text("Sliver..."),
            bottom:AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.tealAccent,
                child: TextField(
                  decoration: InputDecoration(hintText: "search",prefixIcon: Icon(Icons.search)),
                ),
              ),
            ) ,
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(30, (index) => ListTile(
            leading: Text("Hello"),
            trailing: Icon(Icons.person),
          ) ,
          ),
          ),
          ),
        ],
      ),
    );
  }
}
