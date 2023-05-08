import 'package:cartoon_gallery/Sub-Folders/FolderOne.dart';
import 'package:cartoon_gallery/Sub-Folders/FolderTwo.dart';
import 'package:flutter/material.dart';

import '../Sub-Folders/FolderThree.dart';
import '../Sub-Folders/FolderFour.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var size = MediaQuery.of(context).size;
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 15 * SizeConfig.blockSizeVertical,
                ),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 30 * SizeConfig.blockSizeVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 45 * SizeConfig.blockSizeHorizontal,
                        height: size.height * 0.3,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FolderOne(),
                              ),
                            );
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      2 * SizeConfig.blockSizeHorizontal,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/HomeScreen/folder.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Folder 1",
                                      style: TextStyle(
                                        fontSize:
                                            1.7 * SizeConfig.blockSizeVertical,
                                        fontFamily: 'fontHeading',
                                        color: const Color(0xFF282828),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 45 * SizeConfig.blockSizeHorizontal,
                        height: size.height * 0.3,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FolderTwo(),
                              ),
                            );
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      2 * SizeConfig.blockSizeHorizontal,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/HomeScreen/folder.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Folder 2",
                                      style: TextStyle(
                                        fontSize:
                                            1.7 * SizeConfig.blockSizeVertical,
                                        color: const Color(0xFF282828),
                                        fontFamily: 'fontHeading',
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5 * SizeConfig.blockSizeVertical,
                ),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 30 * SizeConfig.blockSizeVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 45 * SizeConfig.blockSizeHorizontal,
                        height: size.height * 0.3,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FolderThree(),
                              ),
                            );
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      2 * SizeConfig.blockSizeHorizontal,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/HomeScreen/folder.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Folder 3",
                                      style: TextStyle(
                                        fontSize:
                                            1.7 * SizeConfig.blockSizeVertical,
                                        fontFamily: 'fontHeading',
                                        color: const Color(0xFF282828),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 45 * SizeConfig.blockSizeHorizontal,
                        height: size.height * 0.3,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FolderFour(),
                              ),
                            );
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      2 * SizeConfig.blockSizeHorizontal,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/HomeScreen/folder.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Folder 4",
                                      style: TextStyle(
                                        fontSize:
                                            1.7 * SizeConfig.blockSizeVertical,
                                        fontFamily: 'fontHeading',
                                        color: const Color(0xFF282828),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 10 * SizeConfig.blockSizeVertical,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
