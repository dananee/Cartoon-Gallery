// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'dart:convert';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_1.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_2.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_3.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_4.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_5.dart';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';
import '../../../FullScreen Assets/FullScreen-ImageViewer.dart';
import '../../../FullScreen Assets/FullScreen-video.dart';

class UnprotectedSubFolder1 extends StatefulWidget {
  const UnprotectedSubFolder1({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder1> createState() => _UnprotectedSubFolder1State();
}

class _UnprotectedSubFolder1State extends State<UnprotectedSubFolder1> {
  List allImagesPath = [];
  late VideoPlayerController controller;
  Future<dynamic>? imagesFetched;

  @override
  void initState() {
    controller = VideoPlayerController.asset(
        "assets/Folder_for_icon_2/Completed_lessons_in_icon_2_No_password_required/Level_1-Brain_computation_car/video1.mp4");
    controller.initialize();
    setState(() {
      allImagesPath = [];
      imagesFetched = loadImages();
    });
    super.initState();
  }

  loadImages() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) => key.startsWith(
            'assets/Folder_for_icon_2/Completed_lessons_in_icon_2_No_password_required/Level_1-Brain_computation_car/icons/'))
        .toList();
    setState(() {
      allImagesPath = assets;
    });
    return allImagesPath;
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
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
                                                                        "assets/Folder_for_icon_2/Completed_lessons_in_icon_2_No_password_required/Level_1-Brain_computation_car/video1.mp4"),
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
                                                            controller),
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
                                                            const UnprotectedSubFolder1_1(),
                                                      ),
                                                    );
                                                  } else if (index == 1) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UnprotectedSubFolder1_2(),
                                                      ),
                                                    );
                                                  } else if (index == 2) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UnprotectedSubFolder1_3(),
                                                      ),
                                                    );
                                                  } else if (index == 3) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UnprotectedSubFolder1_4(),
                                                      ),
                                                    );
                                                  } else if (index == 4) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UnprotectedSubFolder1_5(),
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
