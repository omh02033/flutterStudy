import 'package:flutter/cupertino.dart';
import 'package:flutterstudy/src/home.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const GetCupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      title: _title,
      home: Home(),
    );
  }
}