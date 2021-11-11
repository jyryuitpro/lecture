import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LectureHomePage extends StatefulWidget {
  const LectureHomePage({Key? key}) : super(key: key);

  @override
  _LectureHomePageState createState() => _LectureHomePageState();
}

class _LectureHomePageState extends State<LectureHomePage> {
  int bottomTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.blue[50]!,
                    Colors.blue[100]!,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              height: 72,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: () {
                      setState(() {
                        bottomTab = 0;
                      });
                    },
                    icon: const Icon(
                      LineIcons.clock,
                    ),
                    color: bottomTab == 0 ? Colors.blue : Colors.grey,
                  ),
                  IconButton(
                    iconSize: 28,
                    onPressed: () {
                      setState(() {
                        bottomTab = 1;
                      });
                    },
                    icon: const Icon(
                      LineIcons.comment,
                    ),
                    color: bottomTab == 1 ? Colors.blue : Colors.grey,
                  ),
                  IconButton(
                    iconSize: 28,
                    onPressed: () {
                      setState(() {
                        bottomTab = 2;
                      });
                    },
                    icon: const Icon(
                      LineIcons.stream,
                    ),
                    color: bottomTab == 2 ? Colors.blue : Colors.grey,
                  ),
                  IconButton(
                    iconSize: 28,
                    onPressed: () {
                      setState(() {
                        bottomTab = 3;
                      });
                    },
                    icon: const Icon(
                      LineIcons.cog,
                    ),
                    color: bottomTab == 3 ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
