import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int idx = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Cupertino Design'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Hello Tap #$idx',
              style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
          ),
          CupertinoButton(onPressed: () {Get.to(ABC());}, child: Text('getx test'))
        ]
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: idx,
        onTap: (i) {
          setState(() {
            idx = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile'
          ),
        ],
      ),
    );
  }
}

class ABC extends StatelessWidget {
  const ABC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Getx App Bar'),
      ),
    );
  }
}