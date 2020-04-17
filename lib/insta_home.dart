import 'package:flutter/material.dart';
import 'package:instagram/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topbar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    title: new SizedBox(
      height: 40.0,
      child: new Image.asset("assets/images/instagram_logo.png"),
    ),
    leading: Icon(
      Icons.camera_alt,
      color: Colors.black,
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.live_tv,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.send,
          color: Colors.black,
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topbar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Color(0xfff8faf8),
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
            elevation: 4.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(icon: Icon(Icons.home), onPressed: () {}),
                new IconButton(icon: Icon(Icons.search), onPressed: null),
                new IconButton(icon: Icon(Icons.add_box), onPressed: null),
                new IconButton(icon: Icon(Icons.favorite), onPressed: null),
                new IconButton(icon: Icon(Icons.account_box), onPressed: null),
              ],
            )),
      ),
    );
  }
}
