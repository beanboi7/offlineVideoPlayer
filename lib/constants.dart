import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

String userName = "BOss";
String dob = "24/04/2049";
String gender = "Male";
String mail = "killerbean@protonmail.com ";
String phone = "+1-7485960746";

const img1 = AssetImage('assets/img1.jpg');
const img2 = AssetImage('assets/img2.jpg');
const img3 = AssetImage('assets/img3.jpg');
const img4 = AssetImage('assets/img4.jpg');
const img5 = AssetImage('assets/img5.png');

var vid1 = VideoPlayerController.asset('assets/vid1.mp4');
var vid2 = VideoPlayerController.asset('assets/vid2.mp4');
var vid3 = VideoPlayerController.asset('assets/vid3.mp4');
var vid4 = VideoPlayerController.asset('assets/vid4.mp4');
var vid5 = VideoPlayerController.asset('assets/vid5.mp4');


var map = {
  img1 : vid1,
  img2 : vid2,
  img3 : vid3,
  img4 : vid4,
  img5 : vid5,
};