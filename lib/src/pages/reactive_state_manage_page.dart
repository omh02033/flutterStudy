import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/src/controller/count_controller_with_reactive.dart';
import 'package:get/get.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Getx",
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle
            ),
            Obx(() {
              return Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle
              );
            }),
            CupertinoButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              }
            ),
            CupertinoButton(
              child: Text("5로 변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              }
            )
          ],
        ),
      )
    );
  }
}
