import 'package:flutter/cupertino.dart';
import 'package:flutterstudy/src/home.dart';
import 'package:get/get.dart';

import 'package:flutterstudy/src/pages/named/first.dart';
import 'package:flutterstudy/src/pages/named/second.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      title: 'Flutter Demo',
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first", page: () => FirstNamedPage()),
        GetPage(name: "/second", page: () => SecondNamedPage())
      ],
    );
  }
}