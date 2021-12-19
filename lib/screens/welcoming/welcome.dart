import 'package:tour/screens/welcoming/signup.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';
import 'login.dart';

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController? _controller;

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xfff3b3ae), Color(0xfff6977f)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final Shader linearGradient2 = LinearGradient(
    colors: <Color>[Color(0xff5e5857), Color(0xfff6977f)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/tour1.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login": (context) => LoginScreen(),
        "signUp": (context) => Home(),
            },
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      home: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff5e5857), Color(0xfff5c5bd)])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Welcome to the land of \n Peace And Beauty",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      foreground: Paint()..shader = linearGradient,
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Center(
                    child: _controller!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          )
                        : Container(),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: 250,
                  child: RaisedButton(
                    color: Colors.redAccent.shade100,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    textColor: Colors.black,
                    child: Center(
                        child:Text ("Log In",
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                          ),
                        )
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                Container(
                  width: 250,
                  child: RaisedButton(
                    color: Colors.redAccent.shade100,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    textColor: Colors.black,
                    child: Center(
                        child:Text ("Sign Up",
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                          ),
                        )
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),



              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.grey,
              onPressed: () {
                setState(() {
                  _controller!.value.isPlaying
                      ? _controller!.pause()
                      : _controller!.play();
                });
              },
              child: Icon(
                _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
}

RaisedButton createButton(
  Color color,
  String name,
  Widget Text,

) {
  return RaisedButton(
    color: color,
    onPressed: () {
      // if (name == "Log In") {
      //
      // } else if (name == "Sign Up") {
      // } else {}

      print('Print ' + name);
    },
    textColor: Colors.black,
    child: Center(
      child: Text,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  );
}

