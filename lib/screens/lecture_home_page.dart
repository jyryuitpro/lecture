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
          Positioned(
            left: 0,
            top: MediaQuery.of(context).size.height * 0.03,
            right: 0,
            bottom: 84,
            child: Column(
              children: [
                // Expanded는 Flex 속성값을 설정 할 수 있어서 Widget의 크기를 비율로 조정할 수 있다.
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'November, 12',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Hi, Codepretation',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: const [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(
                                  'assets/images/codepretation.png'),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.pink,
                                radius: 6,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: 'Search group by name',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          )
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 10,
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
