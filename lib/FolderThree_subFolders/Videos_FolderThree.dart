// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'dart:convert';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../FullScreen-Video/FullScreen-video.dart';
import '../main.dart';

class VideoFolderThree extends StatefulWidget {
  int mainFolder;
  int subFolder;

  VideoFolderThree(
      {required this.mainFolder, required this.subFolder, Key? key})
      : super(key: key);

  @override
  State<VideoFolderThree> createState() => _VideoFolderThreeState();
}

class _VideoFolderThreeState extends State<VideoFolderThree> {
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
    if (mainFolderNumber == 3 && subFolderNumber == 1) {
      assetFolderNumber = "Folder3.1";
    } else if (mainFolderNumber == 3 && subFolderNumber == 2) {
      assetFolderNumber = "Folder3.2";
    } else if (mainFolderNumber == 3 && subFolderNumber == 3) {
      assetFolderNumber = "Folder3.3";
    } else if (mainFolderNumber == 3 && subFolderNumber == 4) {
      assetFolderNumber = "Folder3.4";
    } else if (mainFolderNumber == 3 && subFolderNumber == 5) {
      assetFolderNumber = "Folder3.5";
    } else if (mainFolderNumber == 3 && subFolderNumber == 6) {
      assetFolderNumber = "Folder3.6";
    } else if (mainFolderNumber == 3 && subFolderNumber == 7) {
      assetFolderNumber = "Folder3.7";
    } else if (mainFolderNumber == 3 && subFolderNumber == 8) {
      assetFolderNumber = "Folder3.8";
    } else if (mainFolderNumber == 3 && subFolderNumber == 9) {
      assetFolderNumber = "Folder3.9";
    } else if (mainFolderNumber == 3 && subFolderNumber == 10) {
      assetFolderNumber = "Folder3.10";
    } else if (mainFolderNumber == 3 && subFolderNumber == 11) {
      assetFolderNumber = "Folder3.11";
    } else if (mainFolderNumber == 3 && subFolderNumber == 12) {
      assetFolderNumber = "Folder3.12";
    }

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) =>
            key.startsWith('assets/SubFolders/Folder3/$assetFolderNumber/'))
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
          padding: EdgeInsets.symmetric(
              horizontal: 5 * SizeConfig.blockSizeHorizontal),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                noVideos
                    ? Container()
                    : SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                noVideos
                    ? SizedBox(
                        width: 100 * SizeConfig.blockSizeHorizontal,
                        height: 93 * SizeConfig.blockSizeVertical,
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
