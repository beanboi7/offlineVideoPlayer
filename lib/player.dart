import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('player')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text("mediaplayer box"),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    ListTile(title: Text('hemlo2')),
                    ListTile(title: Text('hemlo3'),)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
