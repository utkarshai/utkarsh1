import 'package:flutter/material.dart';
import 'package:image_et/second.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tilugi"),
        ),
        
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return  Center(
              child: Column(
                  children: <Widget>[
                    Flexible(child:  Image.network(
                  'https://picsum.photos/250?image=9',
              ),
              ),
              Container(
                
                child: 
                    RaisedButton(
                   hoverColor: Colors.lightGreen,
                    onPressed: ()=>  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondRoute())),
                    child: Text("image"),  
                  
                ),
              )
               
                  ],
                ),
            );

            
          }),
        ),
    );
  }
}
