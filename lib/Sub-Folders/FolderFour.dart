// ignore_for_file: depend_on_referenced_packages
import 'dart:convert';
import 'dart:ui';
import 'package:cartoon_gallery/FolderFour_subFolders/Videos_FolderFour.dart';
import 'package:flutter/material.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';
import '../main.dart';
import 'package:flutter/services.dart' show rootBundle;

class FolderFour extends StatefulWidget {
  const FolderFour({Key? key}) : super(key: key);

  @override
  State<FolderFour> createState() => _FolderFourState();
}

class _FolderFourState extends State<FolderFour> {
  String _value = "";
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
        .where((String key) => key.startsWith('assets/subFolderImages/'))
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
                                    height: 27 * SizeConfig.blockSizeVertical,
                                    child: ListView.builder(
                                      itemCount: allImagesPath.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return SizedBox(
                                          width: 25 *
                                              SizeConfig.blockSizeHorizontal,
                                          child: GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return BackdropFilter(
                                                    filter: ImageFilter.blur(
                                                        sigmaX: 2, sigmaY: 2),
                                                    child: StatefulBuilder(
                                                      builder:
                                                          (BuildContext context,
                                                              StateSetter
                                                                  setState) {
                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            image:
                                                                const DecorationImage(
                                                              image: AssetImage(
                                                                  'assets/HomeScreen/password-bg.jpg'),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          width: 100 *
                                                              SizeConfig
                                                                  .blockSizeHorizontal,
                                                          height: 80 *
                                                              SizeConfig
                                                                  .blockSizeVertical,
                                                          padding: EdgeInsets.symmetric(
                                                              horizontal: 5 *
                                                                  SizeConfig
                                                                      .blockSizeHorizontal,
                                                              vertical: 2.5 *
                                                                  SizeConfig
                                                                      .blockSizeHorizontal),
                                                          child:
                                                              SingleChildScrollView(
                                                            physics:
                                                                const ScrollPhysics(),
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Container(),
                                                                    Container(),
                                                                    Container(),
                                                                    Container(
                                                                      width: 7 *
                                                                          SizeConfig
                                                                              .blockSizeHorizontal,
                                                                      height: 14 *
                                                                          SizeConfig
                                                                              .blockSizeVertical,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.purple,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        _value.isEmpty
                                                                            ? ""
                                                                            : _value[0],
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          fontSize:
                                                                              6 * SizeConfig.blockSizeHorizontal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 7 *
                                                                          SizeConfig
                                                                              .blockSizeHorizontal,
                                                                      height: 14 *
                                                                          SizeConfig
                                                                              .blockSizeVertical,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.purple,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        (_value.isEmpty ||
                                                                                _value.length == 1)
                                                                            ? ""
                                                                            : _value[1],
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          fontSize:
                                                                              6 * SizeConfig.blockSizeHorizontal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 7 *
                                                                          SizeConfig
                                                                              .blockSizeHorizontal,
                                                                      height: 14 *
                                                                          SizeConfig
                                                                              .blockSizeVertical,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.purple,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        (_value.isEmpty ||
                                                                                _value.length == 1 ||
                                                                                _value.length == 2)
                                                                            ? ""
                                                                            : _value[2],
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          fontSize:
                                                                              6 * SizeConfig.blockSizeHorizontal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 7 *
                                                                          SizeConfig
                                                                              .blockSizeHorizontal,
                                                                      height: 14 *
                                                                          SizeConfig
                                                                              .blockSizeVertical,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.purple,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        (_value.isEmpty ||
                                                                                _value.length == 1 ||
                                                                                _value.length == 2 ||
                                                                                _value.length == 3)
                                                                            ? ""
                                                                            : _value[3],
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          fontSize:
                                                                              6 * SizeConfig.blockSizeHorizontal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(),
                                                                    Container(),
                                                                    Container(),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 5 *
                                                                      SizeConfig
                                                                          .blockSizeVertical,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal: 15 *
                                                                          SizeConfig
                                                                              .blockSizeHorizontal),
                                                                  child:
                                                                      Container(
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(8),
                                                                        border: Border.all(
                                                                          color:
                                                                              Colors.purple,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        color: Colors.white),
                                                                    child:
                                                                        VirtualKeyboard(
                                                                      height: 45 *
                                                                          SizeConfig
                                                                              .blockSizeVertical,
                                                                      type: VirtualKeyboardType
                                                                          .Numeric,
                                                                      onKeyPress:
                                                                          (key) {
                                                                        if (key.text ==
                                                                            '') {
                                                                          setState(
                                                                              () {
                                                                            _value =
                                                                                _value.substring(0, _value.length - 1);
                                                                          });
                                                                        } else {
                                                                          if (_value.length <=
                                                                              3) {
                                                                            setState(() {
                                                                              _value += key.text;
                                                                            });
                                                                          }
                                                                        }
                                                                        if (_value ==
                                                                            "0000") {
                                                                          Navigator.pop(
                                                                              context);
                                                                          setState(
                                                                              () {
                                                                            _value =
                                                                                "";
                                                                          });
                                                                          Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => VideoFolderFour(mainFolder: 4, subFolder: index + 1),
                                                                            ),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ).whenComplete(() {
                                                setState(() {
                                                  _value = "";
                                                });
                                              });
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
