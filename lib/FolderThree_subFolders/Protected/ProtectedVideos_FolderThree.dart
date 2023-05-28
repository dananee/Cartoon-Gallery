// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'dart:convert';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../../FullScreen Assets/FullScreen-video.dart';
import '../../main.dart';

class ProtectedVideosFolderThree extends StatefulWidget {
  int mainFolder;
  int subFolder;

  ProtectedVideosFolderThree(
      {required this.mainFolder, required this.subFolder, Key? key})
      : super(key: key);

  @override
  State<ProtectedVideosFolderThree> createState() =>
      _ProtectedVideosFolderThreeState();
}

class _ProtectedVideosFolderThreeState
    extends State<ProtectedVideosFolderThree> {
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
    } else if (mainFolderNumber == 3 && subFolderNumber == 13) {
      assetFolderNumber = "Folder3.13";
    } else if (mainFolderNumber == 3 && subFolderNumber == 14) {
      assetFolderNumber = "Folder3.14";
    } else if (mainFolderNumber == 3 && subFolderNumber == 15) {
      assetFolderNumber = "Folder3.15";
    } else if (mainFolderNumber == 3 && subFolderNumber == 16) {
      assetFolderNumber = "Folder3.16";
    } else if (mainFolderNumber == 3 && subFolderNumber == 17) {
      assetFolderNumber = "Folder3.17";
    } else if (mainFolderNumber == 3 && subFolderNumber == 18) {
      assetFolderNumber = "Folder3.18";
    } else if (mainFolderNumber == 3 && subFolderNumber == 19) {
      assetFolderNumber = "Folder3.19";
    } else if (mainFolderNumber == 3 && subFolderNumber == 20) {
      assetFolderNumber = "Folder3.20";
    } else if (mainFolderNumber == 3 && subFolderNumber == 21) {
      assetFolderNumber = "Folder3.21";
    } else if (mainFolderNumber == 3 && subFolderNumber == 22) {
      assetFolderNumber = "Folder3.22";
    } else if (mainFolderNumber == 3 && subFolderNumber == 23) {
      assetFolderNumber = "Folder3.23";
    } else if (mainFolderNumber == 3 && subFolderNumber == 24) {
      assetFolderNumber = "Folder3.24";
    } else if (mainFolderNumber == 3 && subFolderNumber == 25) {
      assetFolderNumber = "Folder3.25";
    } else if (mainFolderNumber == 3 && subFolderNumber == 26) {
      assetFolderNumber = "Folder3.26";
    } else if (mainFolderNumber == 3 && subFolderNumber == 27) {
      assetFolderNumber = "Folder3.27";
    } else if (mainFolderNumber == 3 && subFolderNumber == 28) {
      assetFolderNumber = "Folder3.28";
    } else if (mainFolderNumber == 3 && subFolderNumber == 29) {
      assetFolderNumber = "Folder3.29";
    } else if (mainFolderNumber == 3 && subFolderNumber == 30) {
      assetFolderNumber = "Folder3.30";
    } else if (mainFolderNumber == 3 && subFolderNumber == 31) {
      assetFolderNumber = "Folder3.31";
    } else if (mainFolderNumber == 3 && subFolderNumber == 32) {
      assetFolderNumber = "Folder3.32";
    } else if (mainFolderNumber == 3 && subFolderNumber == 33) {
      assetFolderNumber = "Folder3.33";
    } else if (mainFolderNumber == 3 && subFolderNumber == 34) {
      assetFolderNumber = "Folder3.34";
    } else if (mainFolderNumber == 3 && subFolderNumber == 35) {
      assetFolderNumber = "Folder3.35";
    } else if (mainFolderNumber == 3 && subFolderNumber == 36) {
      assetFolderNumber = "Folder3.36";
    } else if (mainFolderNumber == 3 && subFolderNumber == 37) {
      assetFolderNumber = "Folder3.37";
    } else if (mainFolderNumber == 3 && subFolderNumber == 38) {
      assetFolderNumber = "Folder3.38";
    } else if (mainFolderNumber == 3 && subFolderNumber == 39) {
      assetFolderNumber = "Folder3.39";
    } else if (mainFolderNumber == 3 && subFolderNumber == 40) {
      assetFolderNumber = "Folder3.40";
    } else if (mainFolderNumber == 3 && subFolderNumber == 41) {
      assetFolderNumber = "Folder3.41";
    } else if (mainFolderNumber == 3 && subFolderNumber == 42) {
      assetFolderNumber = "Folder3.42";
    } else if (mainFolderNumber == 3 && subFolderNumber == 43) {
      assetFolderNumber = "Folder3.43";
    } else if (mainFolderNumber == 3 && subFolderNumber == 44) {
      assetFolderNumber = "Folder3.44";
    } else if (mainFolderNumber == 3 && subFolderNumber == 45) {
      assetFolderNumber = "Folder3.45";
    } else if (mainFolderNumber == 3 && subFolderNumber == 46) {
      assetFolderNumber = "Folder3.46";
    } else if (mainFolderNumber == 3 && subFolderNumber == 47) {
      assetFolderNumber = "Folder3.47";
    } else if (mainFolderNumber == 3 && subFolderNumber == 48) {
      assetFolderNumber = "Folder3.48";
    } else if (mainFolderNumber == 3 && subFolderNumber == 49) {
      assetFolderNumber = "Folder3.49";
    } else if (mainFolderNumber == 3 && subFolderNumber == 50) {
      assetFolderNumber = "Folder3.50";
    } else if (mainFolderNumber == 3 && subFolderNumber == 51) {
      assetFolderNumber = "Folder3.51";
    } else if (mainFolderNumber == 3 && subFolderNumber == 52) {
      assetFolderNumber = "Folder3.52";
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
