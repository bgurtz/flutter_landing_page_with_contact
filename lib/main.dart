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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Image.asset("assets/images/bg.jpg"),
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/bg.jpg"),
            ),
            Text("Brian Gurtz",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text("Softwear Engineer",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.amber[50],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.amber[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}