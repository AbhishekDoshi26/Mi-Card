import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/crop.jpg"),
              ),
              Text(
                'Abhishek Doshi',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.teal[200],
                thickness: 4,
                indent: 50.0,
                endIndent: 50.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '+91 7818044311',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('tel:+917818044311');
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'adoshi26.ad@gmail.com',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('mailto:adoshi26.ad@gmail.com');
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'Twitter: @AbhishekDoshi26',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('https://twitter.com/AbhishekDoshi26');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
