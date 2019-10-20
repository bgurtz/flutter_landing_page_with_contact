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
      backgroundColor: Colors.lightBlue[200],
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
                color: Colors.lightBlue[50],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
              ),
            ),

            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.lightBlue.shade700,
              ),
            ),

            // The below is how to build a card from Scratch.

            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.lightBlue,
                  ),

                  // The SizedBox adds the space between the phone number and the phone Icon.

                  SizedBox(
                    width: 10.0,
                  ),

                  Text("5734339481",
                    style: TextStyle(color: Colors.lightBlue.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}