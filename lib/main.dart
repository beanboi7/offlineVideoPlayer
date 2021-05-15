
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'profile.dart';
import 'player.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
      routes: {
       '/': (context) => VideoList(),
        '/player' : (context) => Player(),
        '/profile' : (context) => Profile(),
      },
      //home: VideoList(),
    );
  }
}

class VideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hemlo')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('drawer header'),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              }
            ),
            ListTile(
              title: Text('Player'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/player');
              },
            ),
          ],
        ),
      ),
    );
  }
}
