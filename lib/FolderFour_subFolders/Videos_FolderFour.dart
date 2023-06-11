// ignore_for_file: must_be_immutable, depend_on_referenced_packages
import 'dart:convert';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../FullScreen Assets/FullScreen-video.dart';
import '../main.dart';

class VideoFolderFour extends StatefulWidget {
  int mainFolder;
  int subFolder;

  VideoFolderFour({required this.mainFolder, required this.subFolder, Key? key})
      : super(key: key);

  @override
  State<VideoFolderFour> createState() => _VideoFolderFourState();
}

class _VideoFolderFourState extends State<VideoFolderFour> {
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
    if (mainFolderNumber == 4 && subFolderNumber == 1) {
      assetFolderNumber = "1";
    } else if (mainFolderNumber == 4 && subFolderNumber == 2) {
      assetFolderNumber = "2";
    } else if (mainFolderNumber == 4 && subFolderNumber == 3) {
      assetFolderNumber = "3";
    } else if (mainFolderNumber == 4 && subFolderNumber == 4) {
      assetFolderNumber = "4";
    } else if (mainFolderNumber == 4 && subFolderNumber == 5) {
      assetFolderNumber = "5";
    } else if (mainFolderNumber == 4 && subFolderNumber == 6) {
      assetFolderNumber = "6";
    } else if (mainFolderNumber == 4 && subFolderNumber == 7) {
      assetFolderNumber = "7";
    } else if (mainFolderNumber == 4 && subFolderNumber == 8) {
      assetFolderNumber = "8";
    } else if (mainFolderNumber == 4 && subFolderNumber == 9) {
      assetFolderNumber = "9";
    } else if (mainFolderNumber == 4 && subFolderNumber == 10) {
      assetFolderNumber = "10";
    } else if (mainFolderNumber == 4 && subFolderNumber == 11) {
      assetFolderNumber = "11";
    } else if (mainFolderNumber == 4 && subFolderNumber == 12) {
      assetFolderNumber = "12";
    } else if (mainFolderNumber == 4 && subFolderNumber == 13) {
      assetFolderNumber = "13";
    } else if (mainFolderNumber == 4 && subFolderNumber == 14) {
      assetFolderNumber = "14";
    } else if (mainFolderNumber == 4 && subFolderNumber == 15) {
      assetFolderNumber = "15";
    } else if (mainFolderNumber == 4 && subFolderNumber == 16) {
      assetFolderNumber = "16";
    } else if (mainFolderNumber == 4 && subFolderNumber == 17) {
      assetFolderNumber = "17";
    } else if (mainFolderNumber == 4 && subFolderNumber == 18) {
      assetFolderNumber = "18";
    } else if (mainFolderNumber == 4 && subFolderNumber == 19) {
      assetFolderNumber = "19";
    } else if (mainFolderNumber == 4 && subFolderNumber == 20) {
      assetFolderNumber = "20";
    } else if (mainFolderNumber == 4 && subFolderNumber == 21) {
      assetFolderNumber = "21";
    } else if (mainFolderNumber == 4 && subFolderNumber == 22) {
      assetFolderNumber = "22";
    } else if (mainFolderNumber == 4 && subFolderNumber == 23) {
      assetFolderNumber = "23";
    } else if (mainFolderNumber == 4 && subFolderNumber == 24) {
      assetFolderNumber = "24";
    } else if (mainFolderNumber == 4 && subFolderNumber == 25) {
      assetFolderNumber = "25";
    } else if (mainFolderNumber == 4 && subFolderNumber == 26) {
      assetFolderNumber = "26";
    } else if (mainFolderNumber == 4 && subFolderNumber == 27) {
      assetFolderNumber = "27";
    } else if (mainFolderNumber == 4 && subFolderNumber == 28) {
      assetFolderNumber = "28";
    } else if (mainFolderNumber == 4 && subFolderNumber == 29) {
      assetFolderNumber = "29";
    } else if (mainFolderNumber == 4 && subFolderNumber == 30) {
      assetFolderNumber = "30";
    } else if (mainFolderNumber == 4 && subFolderNumber == 31) {
      assetFolderNumber = "31";
    } else if (mainFolderNumber == 4 && subFolderNumber == 32) {
      assetFolderNumber = "32";
    } else if (mainFolderNumber == 4 && subFolderNumber == 33) {
      assetFolderNumber = "33";
    } else if (mainFolderNumber == 4 && subFolderNumber == 34) {
      assetFolderNumber = "34";
    } else if (mainFolderNumber == 4 && subFolderNumber == 35) {
      assetFolderNumber = "35";
    } else if (mainFolderNumber == 4 && subFolderNumber == 36) {
      assetFolderNumber = "36";
    } else if (mainFolderNumber == 4 && subFolderNumber == 37) {
      assetFolderNumber = "37";
    } else if (mainFolderNumber == 4 && subFolderNumber == 38) {
      assetFolderNumber = "38";
    } else if (mainFolderNumber == 4 && subFolderNumber == 39) {
      assetFolderNumber = "39";
    } else if (mainFolderNumber == 4 && subFolderNumber == 40) {
      assetFolderNumber = "40";
    } else if (mainFolderNumber == 4 && subFolderNumber == 41) {
      assetFolderNumber = "41";
    } else if (mainFolderNumber == 4 && subFolderNumber == 42) {
      assetFolderNumber = "42";
    } else if (mainFolderNumber == 4 && subFolderNumber == 43) {
      assetFolderNumber = "43";
    } else if (mainFolderNumber == 4 && subFolderNumber == 44) {
      assetFolderNumber = "44";
    } else if (mainFolderNumber == 4 && subFolderNumber == 45) {
      assetFolderNumber = "45";
    } else if (mainFolderNumber == 4 && subFolderNumber == 46) {
      assetFolderNumber = "46";
    } else if (mainFolderNumber == 4 && subFolderNumber == 47) {
      assetFolderNumber = "47";
    } else if (mainFolderNumber == 4 && subFolderNumber == 48) {
      assetFolderNumber = "48";
    } else if (mainFolderNumber == 4 && subFolderNumber == 49) {
      assetFolderNumber = "49";
    } else if (mainFolderNumber == 4 && subFolderNumber == 50) {
      assetFolderNumber = "50";
    } else if (mainFolderNumber == 4 && subFolderNumber == 51) {
      assetFolderNumber = "51";
    } else if (mainFolderNumber == 4 && subFolderNumber == 52) {
      assetFolderNumber = "52";
    }

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) =>
            key.startsWith('assets/Folder_4/$assetFolderNumber'))
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
