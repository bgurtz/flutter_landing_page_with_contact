import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:landing_page_with_contact/widgets/info_card.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

const url = "http://briangurtz.com";
const email = "bgurtz@gmail.com";
const phone = "573 433 9481";
const location = "College Station, Texas";
const linkedin = "http://linkedin.com/in/briangurtz";

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
  // Built show dialog box for the ' Phone Call '
  // We called the ' _showDialog '  in our ' if ' statment on the phone card.
  void _showDialog(BuildContext context, {String title, String msg}) {
    final dialog = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: <Widget>[
        RaisedButton(
          color: Colors.blueGrey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Close',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    showDialog(context: context, builder: (x) => dialog);
  }

  // the Scaffold widgets is used below to build the avatar image.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Image.asset("assets/images/bg.jpg"),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/bg.jpg"),
              ),
            ),
            

            // Below we have built two Text widgets.
            //  We have also used custom Fonts

            Text("Brian Gurtz",
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript',
              ),
            ),

            Text("Flutter Developer",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white70,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
              ),
            ),

            SizedBox(
              height: 40,
              width: 200,
              child: Divider(
                thickness: 1.0,
                color: Colors.black,
              ),
            ),

            // Below we have used our reusable widget ' Info_Card ' and made 4 card buttons.

            InfoCard(
              
              text: phone,
              icon: Icons.phone,
              onPressed: () async {
                String removeSpaceFromPhoneNumber = phone.replaceAll(new RegExp(r"\s+\b|\b\s"), "");
                final phoneCall = 'tel:$removeSpaceFromPhoneNumber';

                if (await launcher.canLaunch(phoneCall)) {
                  await launcher.launch(phoneCall);
                } else {
                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'Phone number can not be called. Please try again!',
                  );
                }
              },
            ),


            // This card is our send email, notice how the email address has to loo
            // notice how we called our function ' emailAddress ' 
            // adding the pop up / showDialog for the email.
            InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: () async {
                final emailAddress = 'mailto:bgurtz@gmail.com';
                if (await launcher.canLaunch(emailAddress)) {
                  await launcher.launch(emailAddress);
                } else {
                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'Enail is not currently working. Please try again!',
                  );
                }
              },
            ),

            // On the website I replaced the ' text: url '
            // with a text string to make it dispaly the text the way I wanted on the card.
            // not doing this it would have displayed http://briangurtz.com
            // with url launcher you have to have the site start with http://

            InfoCard(
              // text: url,
              text: ("www.BrianGurtz.com"),
              icon: Icons.language,
              onPressed: () async {
                //const url = "www.briangurtz.com"
                if (await launcher.canLaunch(url)) {
                  await launcher.launch(url);
                } else {
                  print ('Error');
                }
              },
            ),

            InfoCard(
              // text: url,
              text: ("LinkedIn Profile"),
              icon: Icons.language,
              onPressed: () async {
                //const url = "www.briangurtz.com"
                if (await launcher.canLaunch(linkedin)) {
                  await launcher.launch(linkedin);
                } else {
                  print ('Error');
                }
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