import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/VideoScreen.dart';
import 'package:videoplayer/Screens/fHomeScreen.dart';
import 'package:videoplayer/Screens/NextNext.dart';
import 'package:videoplayer/Screens/SplashScreen.dart';
import 'package:videoplayer/Screens/recoderDashBord.dart';
import 'package:videoplayer/Screens/videorecod.dart';


void main() {
  runApp(const VideoPlayerApp());
}

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen (),
    );
  }
}