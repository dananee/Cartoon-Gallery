// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'dart:io';

import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideo extends StatefulWidget {
  String videoUrl = "";

  FullScreenVideo({required this.videoUrl, Key? key}) : super(key: key);

  @override
  State<FullScreenVideo> createState() => _FullScreenVideoState();
}

class _FullScreenVideoState extends State<FullScreenVideo> {
  String videoPath = "";
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  final double _aspectRatio = 16 / 9;

  @override
  initState() {
    videoPath = Uri.decodeFull(widget.videoUrl);
    print('PATH $videoPath');
    try {
      _videoPlayerController = VideoPlayerController.asset(videoPath);
      _chewieController = ChewieController(
        allowedScreenSleep: false,
        allowFullScreen: false,
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight
        ],
        videoPlayerController: _videoPlayerController,
        aspectRatio: _aspectRatio,
        autoInitialize: true,
        autoPlay: true,
        showControls: true,
      );
    } catch (e) {
      debugPrint("Error : Full video player controller $e");
    }

    _chewieController.addListener(() {
      if (_chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight
        ]);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              child: OrientationBuilder(
                builder: (context, builder) {
                  return Chewie(
                    controller: _chewieController,
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 2.5 * SizeConfig.blockSizeHorizontal,
                top: 5 * SizeConfig.blockSizeVertical,
              ),
              width: 100 * SizeConfig.blockSizeHorizontal,
              height: 15 * SizeConfig.blockSizeVertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/HomeScreen/back-btn-icon.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
