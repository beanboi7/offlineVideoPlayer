import 'package:flutter/material.dart';
import 'form.dart';
import 'constants.dart';

class Profile extends StatefulWidget {

  final String updateMail;
  final String updateDOB;
  final String updateGender;
  final String updatePhone;
  final String updateUserName;

  const Profile(
      {Key key, this.updateUserName, this.updateMail, this.updateDOB, this.updateGender, this.updatePhone}
      ) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile page'),),
      body: ListView(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: Alignment(0.0,2.5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fextraimages.net%2Fimages%2F2020%2F08%2F05%2FKiller-Bean-Forever-2009-Telugu-Dubbed-Movie-Screen-Shot-6.md.jpg&f=1&nofb=1'),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Builder(
                  builder: (context) => Text(
                    "Username: " + '${widget.updateUserName}',
                    style: TextStyle(
                        fontSize: 25.0,
                        color:Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Email: " + '${widget.updateMail}',
                  style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Phone: " + '${widget.updatePhone}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color:Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DOB: "+ '${widget.updateDOB}',
                  style: TextStyle(
                    fontSize: 15.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Gender: " + '${widget.updateGender}',
                  style: TextStyle(
                      fontSize: 15.0,
                      color:Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => CustomForm(),
              )
          );
        },
      ),
    );
  }
}


// Card(
// margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
// elevation: 2.0,
// child: Padding(
// padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
// child: Text("Skill Sets",style: TextStyle(
// letterSpacing: 2.0,
// fontWeight: FontWeight.w300
// ),))
// ),
// SizedBox(
// height: 15,
// ),
// Card(
// margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Expanded(
// child: Column(
// children: [
// Text("Project",
// style: TextStyle(
// color: Colors.blueAccent,
// fontSize: 22.0,
// fontWeight: FontWeight.w600
// ),),
// SizedBox(
// height: 7,
// ),
// Text("15",
// style: TextStyle(
// color: Colors.black,
// fontSize: 22.0,
// fontWeight: FontWeight.w300
// ),)
// ],
// ),
// ),
// Expanded(
// child:
// Column(
// children: [
// Text("Followers",
// style: TextStyle(
// color: Colors.blueAccent,
// fontSize: 22.0,
// fontWeight: FontWeight.w600
// ),),
// SizedBox(
// height: 7,
// ),
// Text("2000",
// style: TextStyle(
// color: Colors.black,
// fontSize: 22.0,
// fontWeight: FontWeight.w300
// ),)
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// SizedBox(
// height: 50,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// ElevatedButton(
// onPressed: (){
// },
//
// child: Ink(
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// colors: [Colors.pink,Colors.redAccent]
// ),
// borderRadius: BorderRadius.circular(30.0),
// ),
// child: Container(
// constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
// alignment: Alignment.center,
// child: Text(
// "Contact me",
// style: TextStyle(
// color: Colors.white,
// fontSize: 12.0,
// letterSpacing: 2.0,
// fontWeight: FontWeight.w300
// ),
// ),
// ),
// ),
// ),
// ElevatedButton(
// onPressed: (){
// },
// // shape:  RoundedRectangleBorder(
// //   borderRadius: BorderRadius.circular(80.0),
// // ),
// child: Ink(
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// colors: [Colors.pink,Colors.redAccent]
// ),
// borderRadius: BorderRadius.circular(80.0),
// ),
// child: Container(
// constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
// alignment: Alignment.center,
// child: Text(
// "Portfolio",
// style: TextStyle(
// color: Colors.white,
// fontSize: 12.0,
// letterSpacing: 2.0,
// fontWeight: FontWeight.w300
// ),
// ),
// ),
// ),
// )
// ],
// )