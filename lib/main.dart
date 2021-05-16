
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'profile.dart';
import 'player.dart';
import 'holders.dart';

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
      debugShowCheckedModeBanner: false,
      //home: VideoList(),
    );
  }
}

class VideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        backgroundColor: Colors.pinkAccent[100],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                    'Welcome',
                  style:  TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pinkAccent[100],
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: (){
                Navigator.pushNamed(context, '/profile');
              },
            ),
            SizedBox(
              height: 400,
            ),
            Center(
                child: Text("Made by Sriram J")),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        children: <Widget>[
          Builder(builder: (context) {
            return InkWell(
              borderRadius: BorderRadius.circular(30.0),
              child: Column(
                children: [
                  Container(
                      height:250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.white70
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.white70,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 200.0,width:200.0,
                                child: Image(
                                  image: img1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex:2,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Spacer(flex:1),
                                    Text(
                                      'Headline',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Text('SubHeading',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Row(
                                        children: <Widget>[
                                          Spacer(flex: 1),
                                          Icon(Icons.calendar_today),
                                          Spacer(flex:1),
                                          Text('Time of posting'),
                                          Spacer(flex:1),
                                          ElevatedButton.icon(
                                            label: Text('Save'),
                                            icon: Icon(Icons.bookmark_border),
                                            onPressed: (){
                                              Icon(Icons.bookmark);
                                            },
                                          ),
                                          Spacer(flex:1),
                                        ]
                                    ),
                                    Spacer(flex:1),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Player(
                          passedImage: img1,
                          passedVideo: vid1,
                        ),
                  ),
                );
              },
            );
          }),
          Builder(builder: (context) {
            return InkWell(
              borderRadius: BorderRadius.circular(30.0),
              child: Column(
                children: [
                  Container(
                      height:250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                                width: 10.0,
                                color: Colors.white70
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.white70,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 200.0,width:200.0,
                                child: Image(
                                  image: img2,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex:2,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Spacer(flex:1),
                                    Text(
                                      'Headline',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Text('SubHeading',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Row(
                                        children: <Widget>[
                                          Spacer(flex: 1),
                                          Icon(Icons.calendar_today),
                                          Spacer(flex:1),
                                          Text('Time of posting'),
                                          Spacer(flex:1),
                                          ElevatedButton.icon(
                                            label: Text('Save'),
                                            icon: Icon(Icons.bookmark_border),
                                            onPressed: (){
                                              Icon(Icons.bookmark);
                                            },
                                          ),
                                          Spacer(flex:1),
                                        ]
                                    ),
                                    Spacer(flex:1),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Player(
                      passedImage: img2,
                      passedVideo: vid2,
                    ),
                  ),
                );
              },
            );
          }),
          Builder(builder: (context) {
            return InkWell(
              borderRadius: BorderRadius.circular(30.0),
              child: Column(
                children: [
                  Container(
                      height:250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                                width: 10.0,
                                color: Colors.white70
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.white70,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 200.0,width:200.0,
                                child: Image(
                                  image: img3,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex:2,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Spacer(flex:1),
                                    Text(
                                      'Headline',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Text('SubHeading',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Row(
                                        children: <Widget>[
                                          Spacer(flex: 1),
                                          Icon(Icons.calendar_today),
                                          Spacer(flex:1),
                                          Text('Time of posting'),
                                          Spacer(flex:1),
                                          ElevatedButton.icon(
                                            label: Text('Save'),
                                            icon: Icon(Icons.bookmark_border),
                                            onPressed: (){
                                              Icon(Icons.bookmark);
                                            },
                                          ),
                                          Spacer(flex:1),
                                        ]
                                    ),
                                    Spacer(flex:1),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Player(
                      passedImage: img3,
                      passedVideo: vid3,
                    ),
                  ),
                );
              },
            );
          }),
          Builder(builder: (context) {
            return InkWell(
              borderRadius: BorderRadius.circular(30.0),
              child: Column(
                children: [
                  Container(
                      height:250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                                width: 10.0,
                                color: Colors.white70
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.white70,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 200.0,width:200.0,
                                child: Image(
                                  image: img4,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex:2,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Spacer(flex:1),
                                    Text(
                                      'Headline',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Text('SubHeading',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Row(
                                        children: <Widget>[
                                          Spacer(flex: 1),
                                          Icon(Icons.calendar_today),
                                          Spacer(flex:1),
                                          Text('Time of posting'),
                                          Spacer(flex:1),
                                          ElevatedButton.icon(
                                            label: Text('Save'),
                                            icon: Icon(Icons.bookmark_border),
                                            onPressed: (){
                                              Icon(Icons.bookmark);
                                            },
                                          ),
                                          Spacer(flex:1),
                                        ]
                                    ),
                                    Spacer(flex:1),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Player(
                      passedImage: img4,
                      passedVideo: vid4,
                    ),
                  ),
                );
              },
            );
          }),
          Builder(builder: (context) {
            return InkWell(
              borderRadius: BorderRadius.circular(30.0),
              child: Column(
                children: [
                  Container(
                      height:250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                                width: 10.0,
                                color: Colors.white70
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.white70,

                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.white70,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 200.0,width:200.0,
                                child: Image(
                                  image: img5,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex:2,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Spacer(flex:1),
                                    Text(
                                      'Headline',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Text('SubHeading',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Spacer(flex:1),
                                    Row(
                                        children: <Widget>[
                                          Spacer(flex: 1),
                                          Icon(Icons.calendar_today),
                                          Spacer(flex:1),
                                          Text('Time of posting'),
                                          Spacer(flex:1),
                                          ElevatedButton.icon(
                                            label: Text('Save'),
                                            icon: Icon(Icons.bookmark_border),
                                            onPressed: (){
                                              Icon(Icons.bookmark);
                                            },
                                          ),
                                          Spacer(flex:1),
                                        ]
                                    ),
                                    Spacer(flex:1),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Player(
                      passedImage: img5,
                      passedVideo: vid5,
                    ),
                  ),
                );
              },
            );
          }),

        ],
      ),
    );
  }
}
