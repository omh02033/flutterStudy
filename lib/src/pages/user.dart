import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

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
            Text(Get.parameters['uid'] as String),
            Text(Get.parameters['name'] as String),
            Text(Get.parameters['age'] as String),
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