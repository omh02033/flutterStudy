import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Second Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              }
            ),
            CupertinoButton(
              child: Text('홈으로 이동'),
              onPressed: () {
                Get.offAndToNamed('/');
              }
            ),
          ],
        ),
      )
    );
  }
}