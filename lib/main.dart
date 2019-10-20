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

            // The below is how to build a card from Scratch.
            // We have refactored the Card we have built from scratch
            // with the Flutter Card widget, below the 
            // commented out homemade version.  
          
            // Container(
            //   color: Colors.white,
            //   padding: EdgeInsets.all(10.0),
            //   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            //   child: Row(
            //     children: <Widget>[
            //       Icon(
            //         Icons.phone,
            //         color: Colors.lightBlue,
            //       ),

                  // The SizedBox adds the space between the phone number and the phone Icon.

            //       SizedBox(
            //         width: 10.0,
            //       ),

            //       Text("5734339481",
            //         style: TextStyle(color: Colors.lightBlue.shade900,
            //           fontFamily: 'Source Sans Pro',
            //           fontSize: 20.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // Below we are using the flutter Card widget, refactored fromt eh homemade one.

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 18.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.lightBlue,
                ),

                title: Text("573-433-9481",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.lightBlue.shade900,
                  ),
                ),
              ),
            ),
            
            // The card below is the email

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 18.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.lightBlue,
                ),

                title: Text("bgurtz@gmail.com",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.lightBlue.shade900,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}