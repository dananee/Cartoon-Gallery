// ignore_for_file: camel_case_types

import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder1/UnprotectedsubFolder1_1.dart';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder1/UnprotectedsubFolder1_2.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import 'UnprotectedsubFolder1_3.dart';

class UnprotectedsubFolder1 extends StatefulWidget {
  const UnprotectedsubFolder1({Key? key}) : super(key: key);

  @override
  State<UnprotectedsubFolder1> createState() => _UnprotectedsubFolder1State();
}

class _UnprotectedsubFolder1State extends State<UnprotectedsubFolder1> {
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
                                    const UnprotectedSubFolder1_1(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder for icon 1/Folder 1/1. Reality Express Introduction/3. Preview of each car/icon.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5 * SizeConfig.blockSizeHorizontal,
                      ),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const UnprotectedSubFolder1_2(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder for icon 1/Folder 1/1. Reality Express Introduction/1. Reality Express Foundation/icon.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5 * SizeConfig.blockSizeHorizontal,
                      ),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const UnprotectedsubFolder1_3(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder for icon 1/Folder 1/1. Reality Express Introduction/2. Repeating Cycle/Picture30.png"),
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
