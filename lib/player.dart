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
    _controller = passedVideo
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('player')),
      body: Column(
        children: [
          Container(
            height: 250.0,
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
          Container(height: 20.0, width: double.infinity),
          Expanded(
            flex:2,
            child: ListView(
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
                      passedImage = img2;
                      passedVideo = vid2;
                      _controller = passedVideo;
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
                      passedImage = img3;
                      passedVideo = vid3;
                      _controller = passedVideo;
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
                      passedImage = img4;
                      passedVideo = vid4;
                      _controller = passedVideo;
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
                      passedImage = img5;
                      passedVideo = vid5;
                      _controller = passedVideo;
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
                      passedImage = img1;
                      passedVideo = vid1;
                      _controller = passedVideo;
                    },
                  );
                }),

              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(
                  () => _controller.value.isPlaying ?
                  _controller.pause() :
                  _controller.play()
          );
        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow_rounded),
      ),
    );
  }
}

