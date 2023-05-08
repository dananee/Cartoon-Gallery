// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';
import 'package:flutter/material.dart';
import '../FolderOne_subFolders/Videos_FolderOne.dart';
import '../FolderTwo_subFolders/Videos_FolderTwo.dart';
import '../main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FolderTwo extends StatefulWidget {
  const FolderTwo({Key? key}) : super(key: key);

  @override
  State<FolderTwo> createState() => _FolderTwoState();
}

class _FolderTwoState extends State<FolderTwo> {
  List totalFolders = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  bool incorrectPassword = false;

  @override
  void initState() {
    incorrectPassword = false;
    super.initState();
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
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: (1 / 1),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(
                      totalFolders.length,
                      (index) {
                        return SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                incorrectPassword = false;
                              });
                              showDialog<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                    child: StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return AlertDialog(
                                        backgroundColor: Colors.white,
                                        contentPadding: EdgeInsets.zero,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16),
                                          ),
                                          side: BorderSide(
                                              color: Colors.black, width: 1.5),
                                        ),
                                        content: SizedBox(
                                          width: 100 *
                                              SizeConfig.blockSizeHorizontal,
                                          height:
                                              30 * SizeConfig.blockSizeVertical,
                                          child: SingleChildScrollView(
                                            physics: const ScrollPhysics(),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScopeNode currentFocus =
                                                    FocusScope.of(context);
                                                if (!currentFocus
                                                    .hasPrimaryFocus) {
                                                  currentFocus.unfocus();
                                                }
                                              },
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 75 *
                                                        SizeConfig
                                                            .blockSizeHorizontal,
                                                    height: 15 *
                                                        SizeConfig
                                                            .blockSizeVertical,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 70 *
                                                              SizeConfig
                                                                  .blockSizeHorizontal,
                                                          height: 8 *
                                                              SizeConfig
                                                                  .blockSizeVertical,
                                                          child: TextButton(
                                                            style: ButtonStyle(
                                                              foregroundColor:
                                                                  MaterialStateProperty.all<
                                                                          Color>(
                                                                      Colors
                                                                          .white),
                                                              shape: MaterialStateProperty
                                                                  .all<
                                                                      RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  side: const BorderSide(
                                                                      width: 2,
                                                                      color: Color(
                                                                          0XFFFDBF33)),
                                                                ),
                                                              ),
                                                            ),
                                                            onPressed: () {},
                                                            child: Text(
                                                              "Enter the password for Folder ${totalFolders[index]}",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontSize: 2 *
                                                                    SizeConfig
                                                                        .blockSizeVertical,
                                                                fontFamily:
                                                                    'fontHeading',
                                                                color: const Color(
                                                                    0xFF282828),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 60 *
                                                        SizeConfig
                                                            .blockSizeHorizontal,
                                                    height: 10 *
                                                        SizeConfig
                                                            .blockSizeVertical,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        PinCodeTextField(
                                                          appContext: context,
                                                          textStyle: TextStyle(
                                                            fontFamily:
                                                                'regularFont',
                                                            fontSize: 2.4 *
                                                                SizeConfig
                                                                    .blockSizeVertical,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: const Color(
                                                                0xFF181f36),
                                                          ),
                                                          pastedTextStyle:
                                                              TextStyle(
                                                            fontFamily:
                                                                'regularFont',
                                                            fontSize: 2.4 *
                                                                SizeConfig
                                                                    .blockSizeVertical,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: const Color(
                                                                0xFF181f36),
                                                          ),
                                                          length: 4,
                                                          obscureText: false,
                                                          pinTheme: PinTheme(
                                                            fieldWidth: 12 *
                                                                SizeConfig
                                                                    .blockSizeHorizontal,
                                                            fieldHeight: 6 *
                                                                SizeConfig
                                                                    .blockSizeVertical,
                                                            borderWidth: 2,
                                                            shape:
                                                                PinCodeFieldShape
                                                                    .box,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            activeFillColor:
                                                                Colors
                                                                    .transparent,
                                                            inactiveFillColor:
                                                                Colors
                                                                    .transparent,
                                                            selectedColor:
                                                                const Color(
                                                                    0xFF648C9C),
                                                            activeColor:
                                                                const Color(
                                                                    0xFF2B82AF),
                                                            selectedFillColor:
                                                                Colors
                                                                    .transparent,
                                                            inactiveColor:
                                                                const Color(
                                                                    0xFF2B82AF),
                                                          ),
                                                          cursorColor:
                                                              const Color(
                                                                  0xFF648C9C),
                                                          animationDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      300),
                                                          enableActiveFill:
                                                              true,
                                                          errorAnimationController:
                                                              null,
                                                          controller: null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .phone,
                                                          onCompleted: (value) {
                                                            if (value ==
                                                                "0000") {
                                                              Navigator.pop(
                                                                  context);
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder: (context) => VideoFolderTwo(
                                                                      mainFolder:
                                                                          2,
                                                                      subFolder:
                                                                          totalFolders[
                                                                              index]),
                                                                ),
                                                              );
                                                            } else {
                                                              setState(() {
                                                                incorrectPassword =
                                                                    true;
                                                              });
                                                            }
                                                          },
                                                          onChanged: (value) {},
                                                          beforeTextPaste:
                                                              (text) {
                                                            return true;
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  incorrectPassword
                                                      ? SizedBox(
                                                          width: 75 *
                                                              SizeConfig
                                                                  .blockSizeHorizontal,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Incorrect Password",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 1.8 *
                                                                      SizeConfig
                                                                          .blockSizeVertical,
                                                                  fontFamily:
                                                                      'fontHeading',
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      : Container(),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
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
                                      width: 10 * SizeConfig.blockSizeVertical,
                                      height: 10 * SizeConfig.blockSizeVertical,
                                      child: Image.asset(
                                        "assets/SubFolders/subFolder.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        "Folder ${totalFolders[index].toString()}",
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
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
