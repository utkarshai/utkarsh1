import 'package:flutter/material.dart';
import 'package:image_et/set_wall_paper.dart';

class SecondRoute extends StatelessWidget {
  String image;
  SecondRoute(this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Stack(
          children: <Widget>[
              Center(
                child: Image.network(
                      image,
                      fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
                  ),
              ),
           
            Container(
              alignment: Alignment.bottomRight,
            margin: const EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.fromLTRB(20.0, 10.9, 20.9, 0.0),
              child: RaisedButton(
                 onPressed: ()=>  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SetWall(image))),
                child: Text('set as wallpaper'),
              ),
            ),
          ],
        ));
  }
}
