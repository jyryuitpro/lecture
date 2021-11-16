import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
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
      resizeToAvoidBottomInset: false,
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
            bottom: 64,
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
                              backgroundImage:
                                  AssetImage('assets/images/codepretation.png'),
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
                            )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 24,
                      runSpacing: 8,
                      runAlignment: WrapAlignment.center,
                      alignment: WrapAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 6),
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 6),
                            child: Text(
                              'Group',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 6),
                            child: Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 6),
                            child: Text(
                              'Anytime',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 6),
                            child: Text(
                              'Personal',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 6),
                            child: Text(
                              '10 + days',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 240,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '18:30',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 36,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 48,
                                            vertical: 4,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Monday'),
                                              Text(
                                                'Today',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Text.rich(
                                          TextSpan(children: [
                                            TextSpan(
                                              text: '2',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '/12',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 4,
                                            ),
                                            child: Text(
                                              'Upcoming',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 4,
                                            ),
                                            child: Text(
                                              'Group',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 4,
                                            ),
                                            child: Text(
                                              'Today',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      top: 8,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Our Brain And Empathy',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'OP group',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(16, 4, 16, 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://i.pravatar.cc/300'),
                                                ),
                                              ),
                                              Positioned(
                                                left: 30,
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://i.pravatar.cc/300'),
                                                ),
                                              ),
                                              Positioned(
                                                left: 60,
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://i.pravatar.cc/300'),
                                                ),
                                              ),
                                              Positioned(
                                                left: 90,
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://i.pravatar.cc/300'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              '18:30 - 20:00',
                                              style: GoogleFonts.montserrat(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
