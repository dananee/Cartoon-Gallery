// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'dart:convert';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder2/Folder2.1/UnprotectedsubFolder2_1_1.dart';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder2/Folder2.1/UnprotectedsubFolder2_1_2.dart';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder2/Folder2.1/UnprotectedsubFolder2_1_3.dart';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder2/Folder2.1/UnprotectedsubFolder2_1_4.dart';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder2/Folder2.1/UnprotectedsubFolder2_1_5.dart';
import 'package:cartoon_gallery/FolderOne_subFolders/UnProtected/Folder2/Folder2.1/UnprotectedsubFolder2_1_6.dart';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class UnprotectedSubFolder2_1 extends StatefulWidget {
  const UnprotectedSubFolder2_1({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder2_1> createState() =>
      _UnprotectedSubFolder2_1State();
}

class _UnprotectedSubFolder2_1State extends State<UnprotectedSubFolder2_1> {
  List allImagesPath = [];
  Future<dynamic>? imagesFetched;

  @override
  void initState() {
    setState(() {
      allImagesPath = [];
      imagesFetched = loadImages();
    });

    super.initState();
  }

  loadImages() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets = manifestMap.keys
        .where((String key) => key.startsWith(
            'assets/Folder_for_icon_1/Folder_1/2.Biology_Foundation/1-4_Tower_(Atoms)/4.Proton_and_shells/'))
        .toList();
    setState(() {
      allImagesPath = assets;
    });

    return allImagesPath;
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
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                Container(
                  padding:
                      EdgeInsets.only(left: 5 * SizeConfig.blockSizeHorizontal),
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
                  height: 75 * SizeConfig.blockSizeVertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            FutureBuilder(
                              future: imagesFetched,
                              builder: (context, AsyncSnapshot snapshot) {
                                if (!snapshot.hasData) {
                                  return Container();
                                } else {
                                  return SizedBox(
                                    width: 100 * SizeConfig.blockSizeHorizontal,
                                    height: 25 * SizeConfig.blockSizeVertical,
                                    child: ListView.builder(
                                      itemCount: allImagesPath.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return SizedBox(
                                          width: 20 *
                                              SizeConfig.blockSizeHorizontal,
                                          child: GestureDetector(
                                            onTap: () {
                                              if (index == 0) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UnprotectedsubFolder2_1_1(),
                                                  ),
                                                );
                                              } else if (index == 1) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UnprotectedsubFolder2_1_2(),
                                                  ),
                                                );
                                              } else if (index == 2) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UnprotectedsubFolder2_1_3(),
                                                  ),
                                                );
                                              } else if (index == 3) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UnprotectedsubFolder2_1_4(),
                                                  ),
                                                );
                                              } else if (index == 4) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UnprotectedsubFolder2_1_5(),
                                                  ),
                                                );
                                              } else if (index == 5) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UnprotectedsubFolder2_1_6(),
                                                  ),
                                                );
                                              }
                                            },
                                            child: Image(
                                              image: AssetImage(
                                                  allImagesPath[index]),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
