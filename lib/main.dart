import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            UserField(),
            UserField(),
            UserField(),
          ],
        ),
        bottomNavigationBar: BottomNavigation(),
      )
    );
  }
}

class UserField extends StatelessWidget {
  const UserField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // padding: EdgeInsets.all(10),
      onPressed: () { print("Hello"); },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/background.png', width: 50),
          ),
          SizedBox(
            width: 20
          ),
          Text('홍길동', style: TextStyle(
            fontSize: 18,
            color: Colors.black
          ),)
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.phone), label:'phone'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label:'message'),
        BottomNavigationBarItem(icon: Icon(Icons.contact_page), label:'document'),
      ],
    ),
    );
  }
}