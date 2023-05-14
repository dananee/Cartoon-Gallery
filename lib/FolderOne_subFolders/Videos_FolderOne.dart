// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:cartoon_gallery/FullScreen-Video/FullScreen-video.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import '../main.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';

class VideoFolderOne extends StatefulWidget {
  int mainFolder;
  int subFolder;

  VideoFolderOne({required this.mainFolder, required this.subFolder, Key? key})
      : super(key: key);

  @override
  State<VideoFolderOne> createState() => _VideoFolderOneState();
}

class _VideoFolderOneState extends State<VideoFolderOne> {
  bool noVideos = false;
  List<VideoPlayerController> controllersList = [];
  List assetNames = [];
  List assetsPath = [];
  List dummyAssetNames = [];
  late int subFolderNumber;
  late int mainFolderNumber;
  String assetFolderNumber = "";

  @override
  void initState() {
    setState(() {
      noVideos = false;
    });
    mainFolderNumber = widget.mainFolder;
    subFolderNumber = widget.subFolder;
    debugPrint("MainFolder: $mainFolderNumber | Subfolder: $subFolderNumber");
    loadVideos();
    super.initState();
  }

  loadVideos() async {
    if (mainFolderNumber == 1 && subFolderNumber == 1) {
      assetFolderNumber = "Folder1.1";
    } else if (mainFolderNumber == 1 && subFolderNumber == 2) {
      assetFolderNumber = "Folder1.2";
    } else if (mainFolderNumber == 1 && subFolderNumber == 3) {
      assetFolderNumber = "Folder1.3";
    } else if (mainFolderNumber == 1 && subFolderNumber == 4) {
      assetFolderNumber = "Folder1.4";
    } else if (mainFolderNumber == 1 && subFolderNumber == 5) {
      assetFolderNumber = "Folder1.5";
    } else if (mainFolderNumber == 1 && subFolderNumber == 6) {
      assetFolderNumber = "Folder1.6";
    } else if (mainFolderNumber == 1 && subFolderNumber == 7) {
      assetFolderNumber = "Folder1.7";
    } else if (mainFolderNumber == 1 && subFolderNumber == 8) {
      assetFolderNumber = "Folder1.8";
    } else if (mainFolderNumber == 1 && subFolderNumber == 9) {
      assetFolderNumber = "Folder1.9";
    } else if (mainFolderNumber == 1 && subFolderNumber == 10) {
      assetFolderNumber = "Folder1.10";
    } else if (mainFolderNumber == 1 && subFolderNumber == 11) {
      assetFolderNumber = "Folder1.11";
    } else if (mainFolderNumber == 1 && subFolderNumber == 12) {
      assetFolderNumber = "Folder1.12";
    }

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) =>
            key.startsWith('assets/SubFolders/Folder1/$assetFolderNumber/'))
        .toList();
    setState(() {
      assetsPath = assets;
    });
    for (int i = 0; i < assets.length; i++) {
      dummyAssetNames.add(assets[i].split("/").last);
      assetNames.add(dummyAssetNames[i].split(".").first);
    }
    if (assetsPath.isEmpty) {
      setState(() {
        noVideos = true;
      });
    }
    loadVideoPlayer();
  }

  Future<void> loadVideoPlayer() async {
    for (var element in assetsPath) {
      controllersList.add(VideoPlayerController.asset(element));
    }
    for (var controller in controllersList) {
      await controller.initialize().then((_) {
        setState(() {});
      });
    }
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in controllersList) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
          padding: EdgeInsets.symmetric(
              horizontal: 5 * SizeConfig.blockSizeHorizontal),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 10 * SizeConfig.blockSizeVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 5 * SizeConfig.blockSizeHorizontal,
                          height: 8 * SizeConfig.blockSizeVertical,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.purple,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.purple,
                            size: 3 * SizeConfig.blockSizeHorizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                noVideos
                    ? Container()
                    : SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                noVideos
                    ? SizedBox(
                        width: 100 * SizeConfig.blockSizeHorizontal,
                        height: 75 * SizeConfig.blockSizeVertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 25 * SizeConfig.blockSizeVertical,
                              width: 25 * SizeConfig.blockSizeVertical,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/SubFolders/emptyfolder.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        child: GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio: (1 / 0.5),
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: 2 * SizeConfig.blockSizeHorizontal),
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          children: List.generate(
                            assetNames.length,
                            (index) {
                              VideoPlayerController controller =
                                  controllersList[index];
                              return SizedBox(
                                height: 20 * SizeConfig.blockSizeVertical,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FullScreenVideo(
                                            videoUrl: assetsPath[index]),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: VideoPlayer(controller),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                noVideos
                    ? Container()
                    : SizedBox(height: 5 * SizeConfig.blockSizeVertical),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
