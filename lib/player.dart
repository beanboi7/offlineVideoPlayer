import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'constants.dart';


class Player extends StatefulWidget {
  final passedImage;
  final passedVideo;

  const Player({Key key, this.passedImage, this.passedVideo}):super(key: key);

  @override
  _PlayerState createState() => _PlayerState(
    passedImage: this.passedImage, passedVideo: this.passedVideo
  );
}

class _PlayerState extends State<Player> {
  VideoPlayerController _controller;
  var passedImage;
  var passedVideo;
  _PlayerState({this.passedImage, this.passedVideo});

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(passedVideo)
      ..initialize().then((_) {
        setState(() {
          return Image(image : passedImage);
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('player')),
      body: Column(
        children: [
          Spacer(flex:1),
          Container(
            height: 300.0,
            width: double.infinity,
            child: _controller.value.isInitialized ?
            AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ) :
            Container(
                child: Center(child: Text('Choose a video')),
                height: 300.0,
                width: double.infinity,
              ),
          ),
          Spacer(flex:1),
          ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
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
                                      image: img2,
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
                                              Text('${TimeOfDay.now()}'),
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
                      passedImage = img2;
                      passedVideo = vid2;
                      _controller = VideoPlayerController.asset(passedVideo);
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
                                      image: img3,
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
                                              Text('${TimeOfDay.now()}'),
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
                      passedImage = img2;
                      passedVideo = vid2;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => Player(
                      //       passedImage: img2,
                      //       passedVideo: map[img2],
                      //     ),
                      //   ),
                      // );
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
                                      image: img4,
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
                                              Text('${TimeOfDay.now()}'),
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
                      passedImage = img2;
                      passedVideo = vid2;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => Player(
                      //       passedImage: img2,
                      //       passedVideo: map[img2],
                      //     ),
                      //   ),
                      // );
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
                                      image: img5,
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
                                              Text('${TimeOfDay.now()}'),
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
                      passedImage = img2;
                      passedVideo = vid2;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => Player(
                      //       passedImage: img2,
                      //       passedVideo: map[img2],
                      //     ),
                      //   ),
                      // );
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
                                      image: img1,
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
                                              Text('${TimeOfDay.now()}'),
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
                      passedImage = img2;
                      passedVideo = vid2;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => Player(
                      //       passedImage: img2,
                      //       passedVideo: map[img2],
                      //     ),
                      //   ),
                      // );
                    },
                  );
                }),
              ]
          ),
          Spacer(flex:1),
        ],
      ),
    );
  }
}

