import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class VideosPlay extends StatefulWidget {

  final String id;
  final String url;

  VideosPlay(this.id, this.url);

  @override
  _VideosPlayState createState() => _VideosPlayState(id, url);
}

class _VideosPlayState extends State<VideosPlay> {


  String id;
  String url;

  _VideosPlayState(this.id, this.url);


 TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(url);


        //'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'
 
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: false,
      // Try playing around with some of these other options:

      // showControls: false,
       materialProgressColors: ChewieProgressColors(
         playedColor: Colors.red,
         handleColor: Colors.blue,
         backgroundColor: Colors.grey,
         bufferedColor: Colors.lightGreen,
       ),
       placeholder: Container(
         color: Colors.grey,
       ),
       autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.id,
      theme: ThemeData.dark().copyWith(
        platform: _platform ?? Theme.of(context).platform,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:InkWell(child: Icon(Icons.arrow_back_ios), onTap: () => Navigator.pop(context),),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


  