

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OfflinePlayer for video',
      home: OfflinePlayer(),
    );
  }
}


class OfflinePlayer extends StatefulWidget {
  @override
  _OfflinePlayerState createState() => _OfflinePlayerState();
}

class _OfflinePlayerState extends State<OfflinePlayer> {

  @override
  void initState(){
    super.initState();

    //put whatever function needs to run whenever we open our app
  }

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  File _videoFile;
  VideoPlayerController _controller;
  final _picker = ImagePicker();
  int _page=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _page,
          height: 50.0,
          animationCurve: Curves.easeInSine,
          items: <Widget>[
            Icon(Icons.home),
            Icon(Icons.video_library),
            Icon(Icons.upload_file),
          ],
          onTap: (index){
            setState(() {
              _page=index;
            });
          },
        ),
        appBar: AppBar(title: Text("VideoPlayer"), centerTitle: true),
        body: _page == 2 ?
        Builder(
          builder: (BuildContext context) => Center(
            child: uploadVideo(),
            ),
        ) : _page == 1 ?
        Builder(
          builder: (BuildContext context) => Center(
            child: playMedia(),
          ),
        ) : _page == 0 ?
        Builder(
          builder: (BuildContext context) => Center(
              child: Text("ListView of uploaded media")),
        ) : Text("Home Page"),
    );
  }

  //need to write a widget for the homescreen


  //for page 1
  Widget playMedia(){
    _videoFile == null ? _controller = VideoPlayerController.network('https://youtu.be/D9x7JlFMZjU')
        : _controller = VideoPlayerController.file(_videoFile).initialize().then((_){
      setState((){});
    }) as VideoPlayerController;
    return Column(
      children: <Widget>[
        _controller.value.isInitialized ?
        AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller)
        ) :
        Container(
            child: Text("Add a video to play it")
        ),
        CupertinoButton(
            child: Icon(
              _controller.value.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
            ),
            onPressed: (){
              setState((){
                _controller.value.isPlaying ? _controller.pause() : _controller.play();
              });
            }
        )
      ],
    );
  }


  //the below are for page 2
  Widget uploadVideo() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
          ),
          child:(_videoFile != null) ? Image.file(_videoFile) : Image.network('https://i.imgur.com/sUFH1Aq.png'),
        ),
        ElevatedButton(
          onPressed: _goGallery,
              child: Icon(Icons.upload_rounded),
        )
      ],
    );
  }

  void _goGallery() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          color: Color(0xFF737373),
          height: 180,
          child: Container(
            child: Wrap(
              children: <Widget>[
                new ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Photo library'),
                  onTap: (){
                    getVidFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.photo_camera_rounded),
                  title: Text('Photo from Camera'),
                  onTap: (){
                    getVidFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future getVidFromGallery() async {
    final pickVideo = await _picker.getVideo(source: ImageSource.gallery, maxDuration: Duration(seconds: 120));
    setState(() {
      if (pickVideo != null){
        _videoFile = File(pickVideo.path);
      }
    });
  }



}
