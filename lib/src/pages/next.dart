import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterstudy/src/home.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(Get.arguments as User).name} : ${(Get.arguments as User).age}"),
            CupertinoButton(
              child: Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              }
            ),
          ],
        ),
      )
    );
  }
}