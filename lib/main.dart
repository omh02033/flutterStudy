import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.black),
          title: Text('내 앱', style: TextStyle(
            color: Colors.black,
          ),),
          actions: [
            TextButton(
              onPressed: (){print('clicked');},
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/background.png', width: 30),
                  ),
                  SizedBox(width: 10),
                  Text('오명훈')
                ],
              )
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset('assets/background.png', width: 150),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('나 팝니다', style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25
                      )),
                      Text('금호동 3가', style: TextStyle(
                        color: Color(0xffcccccc)
                      )),
                      Text('2,030,000,000,000 원', style: TextStyle(
                        fontSize: 15
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite),
                          Text('4')
                        ],
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffE83C77),
          unselectedItemColor: Color(0xffcccccc),
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.account_circle_outlined)),
          ],
        ),
      ),
    );
  }
}