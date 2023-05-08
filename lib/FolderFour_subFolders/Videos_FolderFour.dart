// ignore_for_file: must_be_immutable, depend_on_referenced_packages
import 'dart:convert';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../FullScreen-Video/FullScreen-video.dart';
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
      assetFolderNumber = "Folder4.1";
    } else if (mainFolderNumber == 4 && subFolderNumber == 2) {
      assetFolderNumber = "Folder4.2";
    } else if (mainFolderNumber == 4 && subFolderNumber == 3) {
      assetFolderNumber = "Folder4.3";
    } else if (mainFolderNumber == 4 && subFolderNumber == 4) {
      assetFolderNumber = "Folder4.4";
    } else if (mainFolderNumber == 4 && subFolderNumber == 5) {
      assetFolderNumber = "Folder4.5";
    } else if (mainFolderNumber == 4 && subFolderNumber == 6) {
      assetFolderNumber = "Folder4.6";
    } else if (mainFolderNumber == 4 && subFolderNumber == 7) {
      assetFolderNumber = "Folder4.7";
    } else if (mainFolderNumber == 4 && subFolderNumber == 8) {
      assetFolderNumber = "Folder4.8";
    } else if (mainFolderNumber == 4 && subFolderNumber == 9) {
      assetFolderNumber = "Folder4.9";
    } else if (mainFolderNumber == 4 && subFolderNumber == 10) {
      assetFolderNumber = "Folder4.10";
    } else if (mainFolderNumber == 4 && subFolderNumber == 11) {
      assetFolderNumber = "Folder4.11";
    } else if (mainFolderNumber == 4 && subFolderNumber == 12) {
      assetFolderNumber = "Folder4.12";
    }

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) =>
            key.startsWith('assets/SubFolders/Folder4/$assetFolderNumber/'))
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
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                SizedBox(
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: (1 / 1),
                    padding: EdgeInsets.zero,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
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
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.3,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 15 * SizeConfig.blockSizeVertical,
                                      height: 15 * SizeConfig.blockSizeVertical,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: VideoPlayer(controller)),
                                    ),
                                    Flexible(
                                      child: Text(
                                        assetNames[index],
                                        style: TextStyle(
                                          fontSize: 1.7 *
                                              SizeConfig.blockSizeVertical,
                                          fontFamily: 'fontHeading',
                                          color: const Color(0xFF282828),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                noVideos
                    ? SizedBox(
                        width: 100 * SizeConfig.blockSizeHorizontal,
                        child: Column(
                          children: [
                            SizedBox(height: 8 * SizeConfig.blockSizeVertical),
                            SizedBox(
                              height: 25 * SizeConfig.blockSizeVertical,
                              width: 25 * SizeConfig.blockSizeVertical,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.3,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 15 * SizeConfig.blockSizeVertical,
                                      height: 15 * SizeConfig.blockSizeVertical,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          "assets/SubFolders/emptyfolder.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        "No videos yet",
                                        style: TextStyle(
                                          fontSize: 1.7 *
                                              SizeConfig.blockSizeVertical,
                                          fontFamily: 'fontHeading',
                                          color: const Color(0xFF282828),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
