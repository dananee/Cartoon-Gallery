// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'dart:convert';
import '../../FullScreen Assets/FullScreen-video.dart';
import '../../main.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';

class ProtectedVideosFolderTwo extends StatefulWidget {
  int mainFolder;
  int subFolder;

  ProtectedVideosFolderTwo({required this.mainFolder, required this.subFolder, Key? key})
      : super(key: key);

  @override
  State<ProtectedVideosFolderTwo> createState() => _ProtectedVideosFolderTwoState();
}

class _ProtectedVideosFolderTwoState extends State<ProtectedVideosFolderTwo> {
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
    if (mainFolderNumber == 2 && subFolderNumber == 1) {
      assetFolderNumber = "Folder2.1";
    } else if (mainFolderNumber == 2 && subFolderNumber == 2) {
      assetFolderNumber = "Folder2.2";
    } else if (mainFolderNumber == 2 && subFolderNumber == 3) {
      assetFolderNumber = "Folder2.3";
    } else if (mainFolderNumber == 2 && subFolderNumber == 4) {
      assetFolderNumber = "Folder2.4";
    } else if (mainFolderNumber == 2 && subFolderNumber == 5) {
      assetFolderNumber = "Folder2.5";
    } else if (mainFolderNumber == 2 && subFolderNumber == 6) {
      assetFolderNumber = "Folder2.6";
    } else if (mainFolderNumber == 2 && subFolderNumber == 7) {
      assetFolderNumber = "Folder2.7";
    } else if (mainFolderNumber == 2 && subFolderNumber == 8) {
      assetFolderNumber = "Folder2.8";
    } else if (mainFolderNumber == 2 && subFolderNumber == 9) {
      assetFolderNumber = "Folder2.9";
    } else if (mainFolderNumber == 2 && subFolderNumber == 10) {
      assetFolderNumber = "Folder2.10";
    } else if (mainFolderNumber == 2 && subFolderNumber == 11) {
      assetFolderNumber = "Folder2.11";
    } else if (mainFolderNumber == 2 && subFolderNumber == 12) {
      assetFolderNumber = "Folder2.12";
    } else if (mainFolderNumber == 2 && subFolderNumber == 13) {
      assetFolderNumber = "Folder2.13";
    } else if (mainFolderNumber == 2 && subFolderNumber == 14) {
      assetFolderNumber = "Folder2.14";
    } else if (mainFolderNumber == 2 && subFolderNumber == 15) {
      assetFolderNumber = "Folder2.15";
    } else if (mainFolderNumber == 2 && subFolderNumber == 16) {
      assetFolderNumber = "Folder2.16";
    } else if (mainFolderNumber == 2 && subFolderNumber == 17) {
      assetFolderNumber = "Folder2.17";
    } else if (mainFolderNumber == 2 && subFolderNumber == 18) {
      assetFolderNumber = "Folder2.18";
    } else if (mainFolderNumber == 2 && subFolderNumber == 19) {
      assetFolderNumber = "Folder2.19";
    } else if (mainFolderNumber == 2 && subFolderNumber == 20) {
      assetFolderNumber = "Folder2.20";
    } else if (mainFolderNumber == 2 && subFolderNumber == 21) {
      assetFolderNumber = "Folder2.21";
    } else if (mainFolderNumber == 2 && subFolderNumber == 22) {
      assetFolderNumber = "Folder2.22";
    } else if (mainFolderNumber == 2 && subFolderNumber == 23) {
      assetFolderNumber = "Folder2.23";
    } else if (mainFolderNumber == 2 && subFolderNumber == 24) {
      assetFolderNumber = "Folder2.24";
    } else if (mainFolderNumber == 2 && subFolderNumber == 25) {
      assetFolderNumber = "Folder2.25";
    } else if (mainFolderNumber == 2 && subFolderNumber == 26) {
      assetFolderNumber = "Folder2.26";
    } else if (mainFolderNumber == 2 && subFolderNumber == 27) {
      assetFolderNumber = "Folder2.27";
    } else if (mainFolderNumber == 2 && subFolderNumber == 28) {
      assetFolderNumber = "Folder2.28";
    } else if (mainFolderNumber == 2 && subFolderNumber == 29) {
      assetFolderNumber = "Folder2.29";
    } else if (mainFolderNumber == 2 && subFolderNumber == 30) {
      assetFolderNumber = "Folder2.30";
    } else if (mainFolderNumber == 2 && subFolderNumber == 31) {
      assetFolderNumber = "Folder2.31";
    } else if (mainFolderNumber == 2 && subFolderNumber == 32) {
      assetFolderNumber = "Folder2.32";
    } else if (mainFolderNumber == 2 && subFolderNumber == 33) {
      assetFolderNumber = "Folder2.33";
    } else if (mainFolderNumber == 2 && subFolderNumber == 34) {
      assetFolderNumber = "Folder2.34";
    } else if (mainFolderNumber == 2 && subFolderNumber == 35) {
      assetFolderNumber = "Folder2.35";
    } else if (mainFolderNumber == 2 && subFolderNumber == 36) {
      assetFolderNumber = "Folder2.36";
    } else if (mainFolderNumber == 2 && subFolderNumber == 37) {
      assetFolderNumber = "Folder2.37";
    } else if (mainFolderNumber == 2 && subFolderNumber == 38) {
      assetFolderNumber = "Folder2.38";
    } else if (mainFolderNumber == 2 && subFolderNumber == 39) {
      assetFolderNumber = "Folder2.39";
    } else if (mainFolderNumber == 2 && subFolderNumber == 40) {
      assetFolderNumber = "Folder2.40";
    } else if (mainFolderNumber == 2 && subFolderNumber == 41) {
      assetFolderNumber = "Folder2.41";
    } else if (mainFolderNumber == 2 && subFolderNumber == 42) {
      assetFolderNumber = "Folder2.42";
    } else if (mainFolderNumber == 2 && subFolderNumber == 43) {
      assetFolderNumber = "Folder2.43";
    } else if (mainFolderNumber == 2 && subFolderNumber == 44) {
      assetFolderNumber = "Folder2.44";
    } else if (mainFolderNumber == 2 && subFolderNumber == 45) {
      assetFolderNumber = "Folder2.45";
    } else if (mainFolderNumber == 2 && subFolderNumber == 46) {
      assetFolderNumber = "Folder2.46";
    } else if (mainFolderNumber == 2 && subFolderNumber == 47) {
      assetFolderNumber = "Folder2.47";
    } else if (mainFolderNumber == 2 && subFolderNumber == 48) {
      assetFolderNumber = "Folder2.48";
    } else if (mainFolderNumber == 2 && subFolderNumber == 49) {
      assetFolderNumber = "Folder2.49";
    } else if (mainFolderNumber == 2 && subFolderNumber == 50) {
      assetFolderNumber = "Folder2.50";
    } else if (mainFolderNumber == 2 && subFolderNumber == 51) {
      assetFolderNumber = "Folder2.51";
    } else if (mainFolderNumber == 2 && subFolderNumber == 52) {
      assetFolderNumber = "Folder2.52";
    }

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) =>
            key.startsWith('assets/SubFolders/Folder2/$assetFolderNumber/'))
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
