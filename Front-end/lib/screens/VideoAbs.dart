import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoAbs extends StatefulWidget {
  @override
  _VideoAbsState createState() => _VideoAbsState();
}

class _VideoAbsState extends State<VideoAbs> {
  String videoURL = "https://www.youtube.com/watch?v=n8X9_MgEdCg";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
