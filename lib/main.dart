import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Home(),
    );
  }
}

class Home extends StatelessWidget {
const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //Image.asset("assets/images/bg.jpg"),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/bg.jpg"),
            )
          ],
        ),
      ),
    );
  }
}