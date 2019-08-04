import 'package:flutter/material.dart';
import 'package:image_et/second.dart';

class Home extends StatefulWidget {
  List li;
  Home(this.li);
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
          children: List.generate(widget.li.length, (index) {
            return  Center(
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 130,
                      child:  Image.network(
                  widget.li[index],
              ),
              ),
              Container(
                
                child: 
                    RaisedButton(
                   hoverColor: Colors.lightGreen,
                    onPressed: ()=>  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondRoute(widget.li[index]))),
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
