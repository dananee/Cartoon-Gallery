// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'dart:convert';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';
import '../../../FullScreen Assets/FullScreen-video.dart';

class UnprotectedSubFolder1_3 extends StatefulWidget {
  const UnprotectedSubFolder1_3({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder1_3> createState() =>
      _UnprotectedSubFolder1_3State();
}

class _UnprotectedSubFolder1_3State extends State<UnprotectedSubFolder1_3> {
  List videoPath = [];
  bool videoAdded = false;
  List<VideoPlayerController> controllersList = [];
  Future<dynamic>? videosFetched;
  late int videoCount;

  @override
  void initState() {
    setState(() {
      videoPath = [];
      videoAdded = false;
      getPath();
    });
    super.initState();
  }

  getPath() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) => key.startsWith(
            'assets/Folder_3/Completed_lessons_icon_3.No_password_required/Level_1_emotion/3_Purpose_of_emotion/'))
        .toList();
    setState(() {
      videoPath = assets;
    });
    debugPrint("$videoPath");
    videosFetched = loadVideoPlayer();
  }

  loadVideoPlayer() async {
    for (var element in videoPath) {
      controllersList.add(VideoPlayerController.asset(element));
    }
    for (var controller in controllersList) {
      await controller.initialize().then((_) {
        setState(() {});
      });
    }
    setState(() {});
    setState(() {
      videoAdded = true;
    });
    return videoPath;
  }

  @override
  void dispose() {
    super.dispose();
    videoPath = [];
    for (var controller in controllersList) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: 100 * SizeConfig.blockSizeHorizontal,
          height: 100 * SizeConfig.blockSizeVertical,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/HomeScreen/main-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                Container(
                  padding:
                      EdgeInsets.only(left: 5 * SizeConfig.blockSizeHorizontal),
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
                videoAdded
                    ? SizedBox(
                        width: 100 * SizeConfig.blockSizeHorizontal,
                        height: 70 * SizeConfig.blockSizeVertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              child: Column(
                                children: [
                                  FutureBuilder(
                                    future: videosFetched,
                                    builder: (context, AsyncSnapshot snapshot) {
                                      if (!snapshot.hasData) {
                                        return Container();
                                      } else {
                                        return SizedBox(
                                          width: 100 *
                                              SizeConfig.blockSizeHorizontal,
                                          height:
                                              25 * SizeConfig.blockSizeVertical,
                                          child: ListView.builder(
                                            itemCount: videoPath.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              VideoPlayerController controller =
                                                  controllersList[index];
                                              return SizedBox(
                                                width: 25 *
                                                    SizeConfig
                                                        .blockSizeHorizontal,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            FullScreenVideo(
                                                                videoUrl:
                                                                    videoPath[
                                                                        index]),
                                                      ),
                                                    );
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1 *
                                                            SizeConfig
                                                                .blockSizeHorizontal,
                                                        right: 1 *
                                                            SizeConfig
                                                                .blockSizeHorizontal),
                                                    child:
                                                        VideoPlayer(controller),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : const CircularProgressIndicator(color: Colors.orange)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
