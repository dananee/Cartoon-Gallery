// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'dart:convert';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_5_1.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_5_2.dart';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';
import '../../../FullScreen Assets/FullScreen-video.dart';

class UnprotectedSubFolder1_5 extends StatefulWidget {
  const UnprotectedSubFolder1_5({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder1_5> createState() =>
      _UnprotectedSubFolder1_5State();
}

class _UnprotectedSubFolder1_5State extends State<UnprotectedSubFolder1_5> {
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
            'assets/Folder_for_icon_2/Completed_lessons_in_icon_2_No_password_required/Level_1-Brain_computation_car/5.king_and_general_either-or/'))
        .toList();
    setState(() {
      videoPath = assets;
    });
    debugPrint("$videoPath");
    videoPath.removeWhere((element) => !element.contains('.mp4'));
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
                                              return Row(
                                                children: [
                                                  index == 0
                                                      ? SizedBox(
                                                          width: 25 *
                                                              SizeConfig
                                                                  .blockSizeHorizontal,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const UnprotectedSubFolder1_5_1(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Image(
                                                              image: AssetImage(
                                                                  "assets/Folder_for_icon_2/Completed_lessons_in_icon_2_No_password_required/Level_1-Brain_computation_car/5.king_and_general_either-or/icons/icon1.png"),
                                                            ),
                                                          ),
                                                        )
                                                      : Container(),
                                                  index == 0
                                                      ? SizedBox(
                                                          width: 25 *
                                                              SizeConfig
                                                                  .blockSizeHorizontal,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const UnprotectedSubFolder1_5_2(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Image(
                                                              image: AssetImage(
                                                                  "assets/Folder_for_icon_2/Completed_lessons_in_icon_2_No_password_required/Level_1-Brain_computation_car/5.king_and_general_either-or/icons/Picture9.png"),
                                                            ),
                                                          ),
                                                        )
                                                      : Container(),
                                                  SizedBox(
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
                                                        child: VideoPlayer(
                                                            controller),
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
                    : const CircularProgressIndicator(color: Colors.orange)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
