// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';
import 'package:flutter/material.dart';
import '../FolderOne_subFolders/Videos_FolderOne.dart';
import '../main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FolderOne extends StatefulWidget {
  const FolderOne({Key? key}) : super(key: key);

  @override
  State<FolderOne> createState() => _FolderOneState();
}

class _FolderOneState extends State<FolderOne> {
  List totalFolders = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
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
                                            Radius.circular(8),
                                          ),
                                        ),
                                        content: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          width: 50 *
                                              SizeConfig.blockSizeHorizontal,
                                          child: SingleChildScrollView(
                                            physics: const ScrollPhysics(),
                                            child: GestureDetector(
                                              onTap: () {
                                                if (!currentFocus
                                                    .hasPrimaryFocus) {
                                                  currentFocus.unfocus();
                                                }
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8 *
                                                        SizeConfig
                                                            .blockSizeHorizontal,
                                                    vertical: MediaQuery.of(
                                                                    context)
                                                                .viewInsets
                                                                .bottom >
                                                            0
                                                        ? 3.5 *
                                                            SizeConfig
                                                                .blockSizeVertical
                                                        : 7 *
                                                            SizeConfig
                                                                .blockSizeVertical),
                                                width: 50 *
                                                    SizeConfig
                                                        .blockSizeHorizontal,
                                                height: MediaQuery.of(context)
                                                            .viewInsets
                                                            .bottom >
                                                        0
                                                    ? 20 *
                                                        SizeConfig
                                                            .blockSizeVertical
                                                    : 30 *
                                                        SizeConfig
                                                            .blockSizeVertical,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/HomeScreen/password-bg.jpg'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                child: PinCodeTextField(
                                                  appContext: context,
                                                  textStyle: TextStyle(
                                                    fontFamily: 'regularFont',
                                                    fontSize: 1.8 *
                                                        SizeConfig
                                                            .blockSizeHorizontal,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0xFF181f36),
                                                  ),
                                                  pastedTextStyle: TextStyle(
                                                    fontFamily: 'regularFont',
                                                    fontSize: 1.8 *
                                                        SizeConfig
                                                            .blockSizeHorizontal,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0xFF181f36),
                                                  ),
                                                  length: 4,
                                                  obscureText: false,
                                                  pinTheme: PinTheme(
                                                    fieldWidth: 8 *
                                                        SizeConfig
                                                            .blockSizeHorizontal,
                                                    fieldHeight: MediaQuery.of(
                                                                    context)
                                                                .viewInsets
                                                                .bottom >
                                                            0
                                                        ? 8 *
                                                            SizeConfig
                                                                .blockSizeVertical
                                                        : 16 *
                                                            SizeConfig
                                                                .blockSizeVertical,
                                                    borderWidth: 2,
                                                    shape:
                                                        PinCodeFieldShape.box,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    activeFillColor:
                                                        Colors.white,
                                                    inactiveFillColor:
                                                        Colors.white,
                                                    selectedColor:
                                                        const Color(0xFF648C9C),
                                                    activeColor:
                                                        const Color(0xFF2B82AF),
                                                    selectedFillColor:
                                                        Colors.white,
                                                    inactiveColor:
                                                        const Color(0xFF2B82AF),
                                                  ),
                                                  cursorColor:
                                                      const Color(0xFF648C9C),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 300),
                                                  enableActiveFill: true,
                                                  errorAnimationController:
                                                      null,
                                                  controller: null,
                                                  keyboardType:
                                                      TextInputType.phone,
                                                  onCompleted: (value) {
                                                    if (value == "0000") {
                                                      Navigator.pop(context);
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              VideoFolderOne(
                                                                  mainFolder: 1,
                                                                  subFolder:
                                                                      totalFolders[
                                                                          index]),
                                                        ),
                                                      );
                                                    } else {}
                                                  },
                                                  onChanged: (value) {},
                                                  beforeTextPaste: (text) {
                                                    return true;
                                                  },
                                                ),
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
