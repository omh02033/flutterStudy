import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/src/controller/count_controller_with_getx.dart';
import 'package:flutterstudy/src/pages/simple_state_manage_page.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountControllerWithGetx>(
              builder: (controller) {
                return Text(
                  "${controller.count}",
                  style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
                );
              },
            ),
            CupertinoButton(
              child: Text('네임드 라우트'),
              onPressed: (){
                Get.toNamed('/first');
              }
            ),
            CupertinoButton(
              child: Text('Arguments 전달'),
              onPressed: (){
                Get.toNamed('/next', arguments: User(
                  name: 'omh', age: 18
                ));
              }
            ),
            CupertinoButton(
              child: Text('동적 url'),
              onPressed: (){
                Get.toNamed('/user/23452?name=omh&age=18');
              }
            ),
            CupertinoButton(
              child: Text('단순상태관리'),
              onPressed: (){
                Get.to(SimpleStateManagePage());
              }
            ),
          ],
        ),
      ),
    );
  }
}

class User{
  String name;
  int age;
  User({required this.name, required this.age});
}