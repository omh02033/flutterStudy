import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<CountControllerWithGetx> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(),
      body: Column(
        children: [
          Obx(() =>
            Text("${controller.count}", style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,)
          ),
          CupertinoButton(
            child: Text('바인딩 버튼'),
            onPressed: () {
              // Get.find<CountControllerWithGetx>().increase();
              // CountControllerWithGetx.to.increase();
              controller.increase();
            }
          )
        ],
      )
    );
  }
}