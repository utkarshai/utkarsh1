import 'package:flutter/material.dart';
import 'package:image_et/home.dart';

import 'list.dart';

class move extends StatefulWidget {
  @override
  _moveState createState() => _moveState();
}

class _moveState extends State<move> {
  List cat1=cat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3.0,
        title: Text("selecting"),
      ),
      body: Center(child: Text("what do you want, go in drawer, make your choice")),
      drawer: Drawer(
         child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('cat'),
               onLongPress:  ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(cat)),
                ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('dogs'),
               onLongPress:  ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(dog)),
                ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('foods'),
               onLongPress:  ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(food)),
                ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('nature'),
              onLongPress:  ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(nature)),
                ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ]
      ),
    ),);
  }
}