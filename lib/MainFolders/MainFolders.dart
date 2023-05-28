// ignore_for_file: depend_on_referenced_packages

import 'package:cartoon_gallery/FolderOne_subFolders/FolderSelection1.dart';
import 'package:cartoon_gallery/FolderThree_subFolders/FolderSelection3.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/FolderSelection2.dart';
import 'package:flutter/material.dart';
import '../Sub-Folders/FolderFour.dart';
import '../FolderTwo_subFolders/Protected/Protected_FolderTwo.dart';
import '../main.dart';
import 'package:permission_handler/permission_handler.dart';

class MainFolders extends StatefulWidget {
  const MainFolders({Key? key}) : super(key: key);

  @override
  State<MainFolders> createState() => _MainFoldersState();
}

class _MainFoldersState extends State<MainFolders> {
  PermissionStatus permissionStatus = PermissionStatus.denied;

  @override
  void initState() {
    super.initState();
  }

  Future<void> requestPermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 90 * SizeConfig.blockSizeVertical,
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
                                    const FolderSelectionOne(),
                              ),
                            );
                          },
                          child: const Image(
                            image:
                                AssetImage("assets/HomeScreen/mainfolder1.png"),
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
                                    const FolderSelectionTwo(),
                              ),
                            );
                          },
                          child: const Image(
                            image:
                                AssetImage("assets/HomeScreen/mainfolder2.png"),
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
                                    const FolderSelectionThree(),
                              ),
                            );
                          },
                          child: const Image(
                            image:
                                AssetImage("assets/HomeScreen/mainfolder3.png"),
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
                                builder: (context) => const FolderFour(),
                              ),
                            );
                          },
                          child: const Image(
                            image:
                                AssetImage("assets/HomeScreen/mainfolder4.png"),
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
