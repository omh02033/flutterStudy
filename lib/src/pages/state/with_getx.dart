import 'package:flutter/cupertino.dart';
import 'package:flutterstudy/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Getx",
            style: CupertinoTheme.of(context).textTheme.navTitleTextStyle
          ),
          GetBuilder<CountControllerWithGetx>(
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle
              );
            },
          ),
          CupertinoButton(
            child: Text('+', style: TextStyle(
              fontSize: 50,
            )),
            onPressed: () {
              Get.find<CountControllerWithGetx>().increase();
            },
          ),
        ],
      ),
    );
  }
}