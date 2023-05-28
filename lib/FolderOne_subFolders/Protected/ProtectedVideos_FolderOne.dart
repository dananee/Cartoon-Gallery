// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'dart:convert';
import '../../FullScreen Assets/FullScreen-video.dart';
import '../../main.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';

class ProtectedVideosFolderOne extends StatefulWidget {
  int mainFolder;
  int subFolder;

  ProtectedVideosFolderOne(
      {required this.mainFolder, required this.subFolder, Key? key})
      : super(key: key);

  @override
  State<ProtectedVideosFolderOne> createState() =>
      _ProtectedVideosFolderOneState();
}

class _ProtectedVideosFolderOneState extends State<ProtectedVideosFolderOne> {
  bool noVideos = false;
  List<VideoPlayerController> controllersList = [];
  List assetsPath = [];
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
    } else if (mainFolderNumber == 1 && subFolderNumber == 13) {
      assetFolderNumber = "Folder1.13";
    } else if (mainFolderNumber == 1 && subFolderNumber == 14) {
      assetFolderNumber = "Folder1.14";
    } else if (mainFolderNumber == 1 && subFolderNumber == 15) {
      assetFolderNumber = "Folder1.15";
    } else if (mainFolderNumber == 1 && subFolderNumber == 16) {
      assetFolderNumber = "Folder1.16";
    } else if (mainFolderNumber == 1 && subFolderNumber == 17) {
      assetFolderNumber = "Folder1.17";
    } else if (mainFolderNumber == 1 && subFolderNumber == 18) {
      assetFolderNumber = "Folder1.18";
    } else if (mainFolderNumber == 1 && subFolderNumber == 19) {
      assetFolderNumber = "Folder1.19";
    } else if (mainFolderNumber == 1 && subFolderNumber == 20) {
      assetFolderNumber = "Folder1.20";
    } else if (mainFolderNumber == 1 && subFolderNumber == 21) {
      assetFolderNumber = "Folder1.21";
    } else if (mainFolderNumber == 1 && subFolderNumber == 22) {
      assetFolderNumber = "Folder1.22";
    } else if (mainFolderNumber == 1 && subFolderNumber == 23) {
      assetFolderNumber = "Folder1.23";
    } else if (mainFolderNumber == 1 && subFolderNumber == 24) {
      assetFolderNumber = "Folder1.24";
    } else if (mainFolderNumber == 1 && subFolderNumber == 25) {
      assetFolderNumber = "Folder1.25";
    } else if (mainFolderNumber == 1 && subFolderNumber == 26) {
      assetFolderNumber = "Folder1.26";
    } else if (mainFolderNumber == 1 && subFolderNumber == 27) {
      assetFolderNumber = "Folder1.27";
    } else if (mainFolderNumber == 1 && subFolderNumber == 28) {
      assetFolderNumber = "Folder1.28";
    } else if (mainFolderNumber == 1 && subFolderNumber == 29) {
      assetFolderNumber = "Folder1.29";
    } else if (mainFolderNumber == 1 && subFolderNumber == 30) {
      assetFolderNumber = "Folder1.30";
    } else if (mainFolderNumber == 1 && subFolderNumber == 31) {
      assetFolderNumber = "Folder1.31";
    } else if (mainFolderNumber == 1 && subFolderNumber == 32) {
      assetFolderNumber = "Folder1.32";
    } else if (mainFolderNumber == 1 && subFolderNumber == 33) {
      assetFolderNumber = "Folder1.33";
    } else if (mainFolderNumber == 1 && subFolderNumber == 34) {
      assetFolderNumber = "Folder1.34";
    } else if (mainFolderNumber == 1 && subFolderNumber == 35) {
      assetFolderNumber = "Folder1.35";
    } else if (mainFolderNumber == 1 && subFolderNumber == 36) {
      assetFolderNumber = "Folder1.36";
    } else if (mainFolderNumber == 1 && subFolderNumber == 37) {
      assetFolderNumber = "Folder1.37";
    } else if (mainFolderNumber == 1 && subFolderNumber == 38) {
      assetFolderNumber = "Folder1.38";
    } else if (mainFolderNumber == 1 && subFolderNumber == 39) {
      assetFolderNumber = "Folder1.39";
    } else if (mainFolderNumber == 1 && subFolderNumber == 40) {
      assetFolderNumber = "Folder1.40";
    } else if (mainFolderNumber == 1 && subFolderNumber == 41) {
      assetFolderNumber = "Folder1.41";
    } else if (mainFolderNumber == 1 && subFolderNumber == 42) {
      assetFolderNumber = "Folder1.42";
    } else if (mainFolderNumber == 1 && subFolderNumber == 43) {
      assetFolderNumber = "Folder1.43";
    } else if (mainFolderNumber == 1 && subFolderNumber == 44) {
      assetFolderNumber = "Folder1.44";
    } else if (mainFolderNumber == 1 && subFolderNumber == 45) {
      assetFolderNumber = "Folder1.45";
    } else if (mainFolderNumber == 1 && subFolderNumber == 46) {
      assetFolderNumber = "Folder1.46";
    } else if (mainFolderNumber == 1 && subFolderNumber == 47) {
      assetFolderNumber = "Folder1.47";
    } else if (mainFolderNumber == 1 && subFolderNumber == 48) {
      assetFolderNumber = "Folder1.48";
    } else if (mainFolderNumber == 1 && subFolderNumber == 49) {
      assetFolderNumber = "Folder1.49";
    } else if (mainFolderNumber == 1 && subFolderNumber == 50) {
      assetFolderNumber = "Folder1.50";
    } else if (mainFolderNumber == 1 && subFolderNumber == 51) {
      assetFolderNumber = "Folder1.51";
    } else if (mainFolderNumber == 1 && subFolderNumber == 52) {
      assetFolderNumber = "Folder1.52";
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
                noVideos
                    ? Container()
                    : SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                noVideos
                    ? SizedBox(
                        width: 100 * SizeConfig.blockSizeHorizontal,
                        height: 70 * SizeConfig.blockSizeVertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 35 * SizeConfig.blockSizeVertical,
                              width: 25 * SizeConfig.blockSizeHorizontal,
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
                            assetsPath.length,
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
