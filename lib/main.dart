import 'package:flutter/material.dart';
import 'package:lecture/screens/lecture_home_page.dart';

void main() {
  runApp(const LectureApp());
}

class LectureApp extends StatelessWidget {
  const LectureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LectureHomePage(),
      },
    );
  }
}
