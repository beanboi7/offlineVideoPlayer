import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile page'),),
      body: Center(
        child: Container(
          child: Text('profile'),
        ),
      ),
    );
  }
}
