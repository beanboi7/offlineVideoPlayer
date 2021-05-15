import 'package:flutter/material.dart';
import 'form.dart';
class Profile extends StatelessWidget {
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
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         "add you image URL here "
                      //     ),
                      //     fit: BoxFit.cover
                      // )
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: Alignment(0.0,2.5),
                      child: CircleAvatar(
                        // backgroundImage: NetworkImage(
                        //     "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbutterflycodes.com%2Fimages%2Ftitleimg%2Fkiller-bean-unleashed-cheats.jpeg&f=1&nofb=1"
                        // ),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "BOss",
                  style: TextStyle(
                      fontSize: 25.0,
                      color:Colors.blueGrey,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cocoa town, Belgium"
                  ,style: TextStyle(
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
                  "Professional Hitman"
                  ,style: TextStyle(
                    fontSize: 15.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                    elevation: 2.0,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
                        child: Text("Skill Sets",style: TextStyle(
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300
                        ),))
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "App Developer || Digital Marketer"
                  ,style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("Project",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600
                                ),),
                              SizedBox(
                                height: 7,
                              ),
                              Text("15",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300
                                ),)
                            ],
                          ),
                        ),
                        Expanded(
                          child:
                          Column(
                            children: [
                              Text("Followers",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600
                                ),),
                              SizedBox(
                                height: 7,
                              ),
                              Text("2000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                      },

                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.pink,Colors.redAccent]
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "Contact me",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                      },
                      // shape:  RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(80.0),
                      // ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.pink,Colors.redAccent]
                          ),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "Portfolio",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
          Navigator.pushNamed((context), '/form');
        },
      ),
    );
  }
}
