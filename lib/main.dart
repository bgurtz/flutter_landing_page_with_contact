import 'package:flutter/material.dart';
import 'package:landing_page_with_contact/widgets/info_card.dart';

const url = "www.BrianGurtz.com";
const email = "bgurtz@gmail.com";
const phone = "573-433-9481";
const location = "College Station, Texas";

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

  // the Scaffold widgets is used below to build the avatar image.

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

            // Below we have built two Text widgets.
            //  We have also used custom Fonts

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

            // Below we have used our reusable widget ' Info_Card ' and made 4 card buttons.

            InfoCard(
              text: phone,
              icon: Icons.phone,
              onPressed: () {
                print("Phone");
              },
            ),

            InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: () {
                print("email");
              },
            ),

            InfoCard(
              text: url,
              icon: Icons.language,
              onPressed: () {
                print("Web Site");
              },
            ),

            InfoCard(
              text: location,
              icon: Icons.track_changes,
              onPressed: () {
                print("Location");
              },
            ),

          ],
        ),
      ),
    );
  }
}