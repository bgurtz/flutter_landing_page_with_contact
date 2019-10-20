import 'package:flutter/material.dart';



class InfoCard extends StatelessWidget {
  //const InfoCard({Key key}) : super(key: key);
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({@required this.text, @required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 18.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  icon,
                  color: Colors.lightBlue,
                ),

                title: Text(text,
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.lightBlue.shade900,
                  ),
                ),
              ),
            ),
    );
  }
}