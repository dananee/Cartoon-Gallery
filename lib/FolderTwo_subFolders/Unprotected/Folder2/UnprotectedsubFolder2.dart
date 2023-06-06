import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder2/UnprotectedsubFolder2_1.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder2/UnprotectedsubFolder2_2.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder2/UnprotectedsubFolder2_3.dart';
import 'package:flutter/material.dart';
import '../../../main.dart';

class UnprotectedSubFolder2 extends StatefulWidget {
  const UnprotectedSubFolder2({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder2> createState() => _UnprotectedSubFolder2State();
}

class _UnprotectedSubFolder2State extends State<UnprotectedSubFolder2> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    const UnprotectedSubFolder2_1(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder for icon 2/Completed lessons in icon 2. No password required/Level 2 - Perception series/1. Intro to perception/Picture12.png"),
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
                                    const UnprotectedSubFolder2_2(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder for icon 2/Completed lessons in icon 2. No password required/Level 2 - Perception series/2. intro to Art lesson 1/Picture21.png"),
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
                                    const UnprotectedSubFolder2_3(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder for icon 2/Completed lessons in icon 2. No password required/Level 2 - Perception series/3. Art lesson 1/icon.png"),
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
