import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';

class SetWall extends StatefulWidget {
  String image;
  SetWall(this.image);
  @override
  _SetWallState createState() => _SetWallState();
}
/*State is information that (1) can be read synchronously when the widget is built and 
(2) might change during the lifetime of the widget. It is the responsibility 
of the widget implementer to ensure that the State is promptly notified when such state changes, using State.setState.

State objects are created by the framework by calling the StatefulWidget.
createState method when inflating a StatefulWidget to insert it into the tree. Because a given StatefulWidget
instance can be inflated multiple times (e.g., the widget is incorporated into the tree in multiple places at once), 
there might be more than one State object associated with a given StatefulWidget instance. Similarly,
 if a StatefulWidget is removed from the tree and later inserted in to the tree again, the framework will call StatefulWidget.
createState again to create a fresh State object, simplifying the lifecycle of State objects.
*/

/*
bool mounted
Whether this State object is currently in a tree.

After creating a State object and before calling initState, 
the framework "mounts" the State object by associating it with a BuildContext.
The State object remains mounted until the framework calls dispose, 
after which time the framework will never ask the State object to build again.

It is an error to call setState unless mounted is true.
*/

class _SetWallState extends State<SetWall> {
  var result = "Waiting to set wallpaper";
  Color rg = Colors.white;
  Color rg1 = Colors.white;
  Color rg2 = Colors.white;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("set wall paper"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Stack(
          children: <Widget>[
            Image.network(
            "https://media1.giphy.com/media/EVf8tbnlr77Es/giphy.gif?cid=790b76115d4564cc5775662e55a4a72d&rid=giphy.gif",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Center(
                child: Container(
              width: 300.0,
              height: 600.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 10),
                    
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "Home Screen",
                        style: TextStyle(color: rg, fontSize: 20),
                      ),
                      onPressed: () async {
                        String res;
                        rg = Colors.green;
                        res = await Wallpaper.homeScreen(
                            widget.image);
                        if (!mounted) return;
                        setState(() {
                          result = res.toString();
                        });
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.black,
                        child: Text(
                          "Lock Screen",
                          style: TextStyle(color: rg1, fontSize: 20),
                        ),
                        onPressed: () async {
                          String res;
                          rg1 = Colors.green;
                          res = await Wallpaper.lockScreen(
                              widget.image);
                          if (!mounted) return;
                          setState(() {
                            result = res.toString();
                          });
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.black,
                        child: Text(
                          "Both",
                          style: TextStyle(color: rg2, fontSize: 20),
                        ),
                        onPressed: () async {
                          String res;
                          rg2 = Colors.green;

                          res = await Wallpaper.bothScreen(
                              widget.image);
                          if (!mounted) return;
                          setState(() {
                            result = res;
                          });
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 10),
                      child: Text(
                        result.toString(),
                        style: TextStyle(
                         
                          color: Colors.yellow,
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            )),
          ],
        ));
  }
}
