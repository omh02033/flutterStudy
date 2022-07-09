import 'package:flutter/cupertino.dart';
import 'package:flutterstudy/src/binding/binding_page.dart';
import 'package:flutterstudy/src/controller/count_controller_with_getx.dart';
import 'package:flutterstudy/src/home.dart';
import 'package:flutterstudy/src/pages/binding.dart';
import 'package:get/get.dart';

import 'package:flutterstudy/src/pages/named/first.dart';
import 'package:flutterstudy/src/pages/named/second.dart';
import 'package:flutterstudy/src/pages/next.dart';
import 'package:flutterstudy/src/pages/user.dart';

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
        GetPage(name: "/", page: () => Home(), transition: Transition.fade),
        GetPage(name: "/first", page: () => FirstNamedPage(), transition: Transition.cupertinoDialog),
        GetPage(name: "/second", page: () => SecondNamedPage(), transition: Transition.zoom),
        GetPage(name: "/next", page: () => NextPage()),
        GetPage(name: "/user/:uid", page: () => UserPage()),
        GetPage(name: "/binding", page: () => BindingPage(),
          binding: BindingPageBinding()
        )
      ],
    );
  }
}