
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'form.dart';
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
        '/form' : (context) => CustomForm(),
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
                      height:300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Spacer(flex:1),
                            SizedBox(
                              child: Image(
                                image: AssetImage('assets/img1.jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(flex:2),
                            Container(
                              child: Column(

                                children: <Widget>[
                                  Spacer(flex:1),
                                  Text(
                                    'Headline',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Text('SubHeading',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('$TimeOfDay.now()'),
                                        ElevatedButton.icon(
                                          label: Text('Save'),
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: (){
                                            Icon(Icons.bookmark);
                                          },
                                        )
                                      ]
                                  ),
                                  Spacer(flex:1),
                                ],
                              ),
                            ),
                            Spacer(flex:1),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Container pressed'),
                    content: Text("InkWell works well"),
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
                      height:300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Spacer(flex:1),
                            SizedBox(
                              child: Image(
                                image: AssetImage('assets/img2.jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(flex:2),
                            Container(
                              child: Column(

                                children: <Widget>[
                                  Spacer(flex:1),
                                  Text(
                                    'Headline',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Text('SubHeading',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('$TimeOfDay.now()'),
                                        ElevatedButton.icon(
                                          label: Text('Save'),
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: (){
                                            Icon(Icons.bookmark);
                                          },
                                        )
                                      ]
                                  ),
                                  Spacer(flex:1),
                                ],
                              ),
                            ),
                            Spacer(flex:1),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Container pressed'),
                    content: Text("InkWell works well"),
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
                      height:300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Spacer(flex:1),
                            SizedBox(
                              child: Image(
                                image: AssetImage('assets/img3.jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(flex:2),
                            Container(
                              child: Column(

                                children: <Widget>[
                                  Spacer(flex:1),
                                  Text(
                                    'Headline',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Text('SubHeading',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('$TimeOfDay.now()'),
                                        ElevatedButton.icon(
                                          label: Text('Save'),
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: (){
                                            Icon(Icons.bookmark);
                                          },
                                        )
                                      ]
                                  ),
                                  Spacer(flex:1),
                                ],
                              ),
                            ),
                            Spacer(flex:1),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Container pressed'),
                    content: Text("InkWell works well"),
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
                      height:300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Spacer(flex:1),
                            SizedBox(
                              child: Image(
                                image: AssetImage('assets/img4.jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(flex:2),
                            Container(
                              child: Column(

                                children: <Widget>[
                                  Spacer(flex:1),
                                  Text(
                                    'Headline',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Text('SubHeading',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('$TimeOfDay.now()'),
                                        ElevatedButton.icon(
                                          label: Text('Save'),
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: (){
                                            Icon(Icons.bookmark);
                                          },
                                        )
                                      ]
                                  ),
                                  Spacer(flex:1),
                                ],
                              ),
                            ),
                            Spacer(flex:1),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Container pressed'),
                    content: Text("InkWell works well"),
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
                      height:300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Spacer(flex:1),
                            SizedBox(
                              child: Image(
                                image: AssetImage('assets/img5.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(flex:2),
                            Container(
                              child: Column(

                                children: <Widget>[
                                  Spacer(flex:1),
                                  Text(
                                    'Headline',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Text('SubHeading',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('$TimeOfDay.now()'),
                                        ElevatedButton.icon(
                                          label: Text('Save'),
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: (){
                                            Icon(Icons.bookmark);
                                          },
                                        )
                                      ]
                                  ),
                                  Spacer(flex:1),
                                ],
                              ),
                            ),
                            Spacer(flex:1),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Container pressed'),
                    content: Text("InkWell works well"),
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
                      height:300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border(
                            top: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            bottom: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            right: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 10.0,
                              color: Colors.blueGrey,
                              style: BorderStyle.solid,
                            ),
                          )
                      ),
                      padding: EdgeInsets.zero,
                      child: Row(
                          children: <Widget>[
                            Spacer(flex:1),
                            SizedBox(
                              child: Image(
                                image: AssetImage('assets/img1.jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(flex:2),
                            Container(
                              child: Column(

                                children: <Widget>[
                                  Spacer(flex:1),
                                  Text(
                                    'Headline',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Text('SubHeading',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(flex:2),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('$TimeOfDay.now()'),
                                        ElevatedButton.icon(
                                          label: Text('Save'),
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: (){
                                            Icon(Icons.bookmark);
                                          },
                                        )
                                      ]
                                  ),
                                  Spacer(flex:1),
                                ],
                              ),
                            ),
                            Spacer(flex:1),
                          ]
                      )
                  ),
                ],
              ),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Container pressed'),
                    content: Text("InkWell works well"),
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
