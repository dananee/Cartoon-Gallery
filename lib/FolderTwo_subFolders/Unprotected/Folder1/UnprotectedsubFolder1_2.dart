// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'dart:convert';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder1/UnprotectedsubFolder1_2_1.dart';
import 'package:cartoon_gallery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../../../FullScreen Assets/FullScreen-ImageViewer.dart';

class UnprotectedSubFolder1_2 extends StatefulWidget {
  const UnprotectedSubFolder1_2({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder1_2> createState() =>
      _UnprotectedSubFolder1_2State();
}

class _UnprotectedSubFolder1_2State extends State<UnprotectedSubFolder1_2> {
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
            'assets/MainFolder2_assets/UnprotectedFolder_assets/Folder1_2/'))
        .toList();
    setState(() {
      allImagesPath = assets;
    });
    debugPrint("$allImagesPath");
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
                  height: 70 * SizeConfig.blockSizeVertical,
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
                                        return Row(
                                          children: [
                                            SizedBox(
                                              width: 20 *
                                                  SizeConfig
                                                      .blockSizeHorizontal,
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (index == 0) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UnprotectedSubFolder1_2_1(),
                                                      ),
                                                    );
                                                  } else {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            FullScreenImageViewer(
                                                                imagePath:
                                                                    allImagesPath[
                                                                        index]),
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: Image(
                                                  image: AssetImage(
                                                      allImagesPath[index]),
                                                ),
                                              ),
                                            ),
                                          ],
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
