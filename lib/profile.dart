import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'form.dart';
import 'holders.dart';

class Profile extends StatefulWidget {
  final String updateMail;
  final String updateDOB;
  final String updateGender;
  final String updatePhone;
  final String updateUserName;

  const Profile(
      {Key key,
      this.updateUserName,
      this.updateMail,
      this.updateDOB,
      this.updateGender,
      this.updatePhone})
      : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  //read from cache
  void readData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userName = prefs.getString('Name');
    mail = prefs.getString('Mail');
    dob = prefs.getString('DOB');
    gender = prefs.getString('Gender');
    phone = prefs.getString('Phone');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile page'),
        backgroundColor: Colors.pinkAccent[100],
      ),
      body: ListView(children: <Widget>[
        SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fextraimages.net%2Fimages%2F2020%2F08%2F05%2FKiller-Bean-Forever-2009-Telugu-Dubbed-Movie-Screen-Shot-6.md.jpg&f=1&nofb=1'),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text( (userName == null || userName.isEmpty) ?
                "Username: " + '${widget.updateUserName}' : userName,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text( (mail == null || mail.isEmpty) ?
                "Email: " + '${widget.updateMail}' : mail,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text( (phone == null || phone.isEmpty) ?
                "Phone: " + '${widget.updatePhone}': phone,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text( (dob == null || dob.isEmpty) ?
                "DOB: " + '${widget.updateDOB}' : dob,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text( gender == null || gender.isEmpty ?
                "Gender: " + '${widget.updateGender}' : gender ,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CustomForm(),
              ));
        },
      ),
    );
  }
}


