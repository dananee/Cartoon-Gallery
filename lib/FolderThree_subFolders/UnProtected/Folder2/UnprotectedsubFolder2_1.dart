// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:cartoon_gallery/FullScreen%20Assets/FullScreen-AudioPlayer.dart';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';

import '../../../FullScreen Assets/FullScreen-ImageViewer.dart';

class UnprotectedsubFolder2_1 extends StatefulWidget {
  const UnprotectedsubFolder2_1({Key? key}) : super(key: key);

  @override
  State<UnprotectedsubFolder2_1> createState() =>
      _UnprotectedsubFolder2_1State();
}

class _UnprotectedsubFolder2_1State extends State<UnprotectedsubFolder2_1> {
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
              image: AssetImage('assets/HomeScreen/mai-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 5 * SizeConfig.blockSizeHorizontal),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 70 * SizeConfig.blockSizeVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    FullScreenAudioPlayer(audioNumber: 1),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage("assets/subFolderImages/11.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    FullScreenAudioPlayer(audioNumber: 2),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage("assets/subFolderImages/12.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    FullScreenAudioPlayer(audioNumber: 3),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage("assets/subFolderImages/13.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FullScreenImageViewer(
                                    imagePath:
                                        "assets/MainFolder3_assets/UnprotectedFolder_assets/Folder2/unprotectedsubFolder2_1_1.png"),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/MainFolder3_assets/UnprotectedFolder_assets/Folder2/unprotectedsubFolder2_1_1.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
