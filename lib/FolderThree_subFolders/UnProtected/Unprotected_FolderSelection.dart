import 'package:cartoon_gallery/FolderThree_subFolders/UnProtected/Folder1/UnprotectedsubFolder1.dart';
import 'package:cartoon_gallery/FolderThree_subFolders/UnProtected/Folder2/UnprotectedsubFolder2.dart';
import 'package:flutter/material.dart';
import '../../main.dart';

class UnprotectedFolderSelection extends StatefulWidget {
  const UnprotectedFolderSelection({Key? key}) : super(key: key);

  @override
  State<UnprotectedFolderSelection> createState() =>
      _UnprotectedFolderSelectionState();
}

class _UnprotectedFolderSelectionState
    extends State<UnprotectedFolderSelection> {
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
                                    const UnprotectedsubFolder1(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                              "assets/Folder 3/Completed lessons icon 3. No password required/Level 1 - emotion/icon.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.blockSizeHorizontal,
                      ),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const UnprotectedsubFolder2(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/Folder 3/Completed lessons icon 3. No password required/Level 2 - emotion/Icon emotion level 2.png"),
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
