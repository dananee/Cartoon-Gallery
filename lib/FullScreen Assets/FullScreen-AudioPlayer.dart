// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../main.dart';
import 'package:path/path.dart' as path;

class FullScreenAudioPlayer extends StatefulWidget {
  int audioNumber;

  FullScreenAudioPlayer({required this.audioNumber, Key? key})
      : super(key: key);

  @override
  State<FullScreenAudioPlayer> createState() => _FullScreenAudioPlayerState();
}

class _FullScreenAudioPlayerState extends State<FullScreenAudioPlayer> {
  int audioNumber = 1;
  String audioPath = "";
  String image = "";
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return '${duration.inHours}:$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  initState() {
    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    super.initState();
  }

  Future setAudio() async {
    audioNumber = widget.audioNumber;
    if (audioNumber == 1) {
      audioPath = path.join(
          '/storage/emulated/0/',
          'cartoon-gallery-assets',
          'MainFolder3-assets',
          'Unprotected-Videos',
          'Unprotected_video2_1',
          'audio1.mp3');
      image = "assets/subFolderImages/11.png";
    } else if (audioNumber == 2) {
      audioPath = path.join(
          '/storage/emulated/0/',
          'cartoon-gallery-assets',
          'MainFolder3-assets',
          'Unprotected-Videos',
          'Unprotected_video2_1',
          'audio2.mp3');
      image = "assets/subFolderImages/12.png";
    } else if (audioNumber == 3) {
      audioPath = path.join(
          '/storage/emulated/0/',
          'cartoon-gallery-assets',
          'MainFolder3-assets',
          'Unprotected-Videos',
          'Unprotected_video2_1',
          'audio3.mp3');
      image = "assets/subFolderImages/13.png";
    }

    audioPlayer.setReleaseMode(ReleaseMode.loop);
    audioPlayer.play(DeviceFileSource(audioPath));
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: 100 * SizeConfig.blockSizeHorizontal,
          height: 100 * SizeConfig.blockSizeVertical,
          decoration: const BoxDecoration(color: Colors.black),
          padding: EdgeInsets.symmetric(
              horizontal: 5 * SizeConfig.blockSizeHorizontal),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                SizedBox(
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
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 40 * SizeConfig.blockSizeVertical,
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 10 * SizeConfig.blockSizeVertical,
                  child: Slider(
                    activeColor: Colors.orange,
                    inactiveColor: Colors.orange[300],
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await audioPlayer.seek(position);
                      await audioPlayer.resume();
                    },
                  ),
                ),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 5 * SizeConfig.blockSizeVertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 3 * SizeConfig.blockSizeHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formatTime(position),
                          style: TextStyle(color: Colors.orange[300]),
                        ),
                        Text(
                          formatTime(duration - position),
                          style: TextStyle(color: Colors.orange[300]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: 100 * SizeConfig.blockSizeHorizontal,
                    height: 15 * SizeConfig.blockSizeVertical,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: IconButton(
                        icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                        iconSize: 10 * SizeConfig.blockSizeVertical,
                        color: Colors.orange[100],
                        onPressed: () async {
                          if (isPlaying) {
                            await audioPlayer.pause();
                          } else {
                            await audioPlayer.resume();
                          }
                        },
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
