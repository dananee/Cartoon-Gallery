// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';
import 'package:cartoon_gallery/FolderThree_subFolders/Videos_FolderThree.dart';
import 'package:flutter/material.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';
import '../main.dart';

class FolderThree extends StatefulWidget {
  const FolderThree({Key? key}) : super(key: key);

  @override
  State<FolderThree> createState() => _FolderThreeState();
}

class _FolderThreeState extends State<FolderThree> {
  List totalFolders = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  String _value = "";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/HomeScreen/main-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: 100 * SizeConfig.blockSizeHorizontal,
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
                          width: 5 *
                              SizeConfig
                                  .blockSizeHorizontal,
                          height: 8 *
                              SizeConfig
                                  .blockSizeVertical,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color:  Colors.purple,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child:  Icon(
                            Icons.arrow_back,
                            color: Colors.purple,
                            size: 3 *
                                SizeConfig
                                    .blockSizeHorizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: (1.5 / 0.5),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: List.generate(
                      totalFolders.length,
                      (index) {
                        return SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                    child: StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/HomeScreen/password-bg.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        width: 100 *
                                            SizeConfig.blockSizeHorizontal,
                                        height:
                                            80 * SizeConfig.blockSizeVertical,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5 *
                                                SizeConfig.blockSizeHorizontal,
                                            vertical: 2.5 *
                                                SizeConfig.blockSizeHorizontal),
                                        child: SingleChildScrollView(
                                          physics: const ScrollPhysics(),
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
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: Colors.purple,
                                                        width: 1,
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Text(
                                                      _value.isEmpty
                                                          ? ""
                                                          : _value[0],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 6 *
                                                            SizeConfig
                                                                .blockSizeHorizontal,
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
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: Colors.purple,
                                                        width: 1,
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Text(
                                                      (_value.isEmpty ||
                                                              _value.length ==
                                                                  1)
                                                          ? ""
                                                          : _value[1],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 6 *
                                                            SizeConfig
                                                                .blockSizeHorizontal,
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
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: Colors.purple,
                                                        width: 1,
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Text(
                                                      (_value.isEmpty ||
                                                              _value.length ==
                                                                  1 ||
                                                              _value.length ==
                                                                  2)
                                                          ? ""
                                                          : _value[2],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 6 *
                                                            SizeConfig
                                                                .blockSizeHorizontal,
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
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: Colors.purple,
                                                        width: 1,
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Text(
                                                      (_value.isEmpty ||
                                                              _value.length ==
                                                                  1 ||
                                                              _value.length ==
                                                                  2 ||
                                                              _value.length ==
                                                                  3)
                                                          ? ""
                                                          : _value[3],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 6 *
                                                            SizeConfig
                                                                .blockSizeHorizontal,
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
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: Colors.purple,
                                                        width: 1,
                                                      ),
                                                      color: Colors.white),
                                                  child: VirtualKeyboard(
                                                    height: 45 *
                                                        SizeConfig
                                                            .blockSizeVertical,
                                                    type: VirtualKeyboardType
                                                        .Numeric,
                                                    onKeyPress: (key) {
                                                      if (key.text == '') {
                                                        setState(() {
                                                          _value =
                                                              _value.substring(
                                                                  0,
                                                                  _value.length -
                                                                      1);
                                                          debugPrint(_value);
                                                        });
                                                      } else {
                                                        if (_value.length <=
                                                            3) {
                                                          setState(() {
                                                            _value += key.text;
                                                          });
                                                        }
                                                      }
                                                      if (_value == "0000") {
                                                        Navigator.pop(context);
                                                        setState(() {
                                                          _value = "";
                                                        });
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                VideoFolderThree(
                                                                    mainFolder:
                                                                        3,
                                                                    subFolder:
                                                                        totalFolders[
                                                                            index]),
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
                                    }),
                                  );
                                },
                              ).whenComplete(() {
                                setState(() {
                                  _value = "";
                                });
                              });
                            },
                            child: Image.asset(
                              "assets/SubFolders/subFolder.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
