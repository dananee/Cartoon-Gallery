// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'dart:convert';
import 'package:cartoon_gallery/FolderThree_subFolders/UnProtected/Folder1/UnprotectedsubFolder1_1_1.dart';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';
import '../../../FullScreen Assets/FullScreen-ImageViewer.dart';
import '../../../FullScreen Assets/FullScreen-video.dart';
import 'package:path/path.dart' as path;
import 'dart:io';

class UnprotectedSubFolder1_1 extends StatefulWidget {
  const UnprotectedSubFolder1_1({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder1_1> createState() =>
      _UnprotectedSubFolder1_1State();
}

class _UnprotectedSubFolder1_1State extends State<UnprotectedSubFolder1_1> {
  List allImagesPath = [];
  late VideoPlayerController controller1;
  late VideoPlayerController controller2;
  Future<dynamic>? imagesFetched;

  @override
  void initState() {
    setState(() {
      allImagesPath = [];
      imagesFetched = loadImages();
    });
    controller1 = VideoPlayerController.asset(
        "assets/Folder_3/Completed_lessons_icon_3.No_password_required/Level_1_emotion/1_Fear/1_Fear_intro.mp4");
    controller1.initialize();
    controller2 = VideoPlayerController.asset(
        "assets/Folder_3/Completed_lessons_icon_3.No_password_required/Level_1_emotion/1_Fear/2_Fear_1.mp4");
    controller2.initialize();
    super.initState();
  }

  loadImages() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap =
        json.decode(manifestContent.replaceAll('%20', ' '));
    final assets = manifestMap.keys
        .where((String key) => key.startsWith(
            'assets/Folder_3/Completed_lessons_icon_3.No_password_required/Level_1_emotion/1_Fear/'))
        .toList();
    setState(() {
      allImagesPath = assets;
    });
    allImagesPath.removeWhere((element) => element.contains(".mp4"));
    return allImagesPath;
  }

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
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
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 70 * SizeConfig.blockSizeVertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            FutureBuilder(
                              future: imagesFetched,
                              builder: (context, AsyncSnapshot snapshot) {
                                if (!snapshot.hasData) {
                                  return Container();
                                } else {
                                  return SizedBox(
                                    width: 100 * SizeConfig.blockSizeHorizontal,
                                    height: 25 * SizeConfig.blockSizeVertical,
                                    child: ListView.builder(
                                      itemCount: allImagesPath.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            index == 0
                                                ? SizedBox(
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
                                                                        "assets/videos1/videos2/videos2/2Fear.mp4"),
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
                                                        child: VideoPlayer(
                                                            controller1),
                                                      ),
                                                    ),
                                                  )
                                                : Container(),
                                            index == 0
                                                ? SizedBox(
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
                                                                        "assets/Folder 3/Completed lessons icon 3. No password required/Level 1 - emotion/1. Fear/2Fear1.mp4"),
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
                                                        child: VideoPlayer(
                                                            controller2),
                                                      ),
                                                    ),
                                                  )
                                                : Container(),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  right: 1 *
                                                      SizeConfig
                                                          .blockSizeHorizontal),
                                              width: 20 *
                                                  SizeConfig
                                                      .blockSizeHorizontal,
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (index == 0) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UnprotectedSubFolder1_1_1(),
                                                      ),
                                                    );
                                                  } else {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            FullScreenImageViewer(
                                                                imagePath:
                                                                    allImagesPath[
                                                                        index]),
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: Image(
                                                  image: AssetImage(
                                                      allImagesPath[index]),
                                                ),
                                              ),
                                            ),
                                          ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
