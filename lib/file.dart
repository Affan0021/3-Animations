import 'package:flutter/material.dart';

class File extends StatefulWidget {

  @override
  _FileState createState() => _FileState();
}

class _FileState extends State<File> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            //   new Image.asset('assets/images/play.png'),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 160.0,
                  vertical: 90.0,
                ),
                child: Column(children: <Widget>[
                  Text('Prime ',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'OpenSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      )),
                ])),

            Container(
                padding: EdgeInsets.symmetric(
                  //horizontal: 120.0,
                  vertical: 90.0,
                ),
                child: Column(children: <Widget>[
                  Text('             \t\t\t\t\t\t\t\t\t\tLifting ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'OpenSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Align(
                    alignment: Alignment.centerRight,
                  ),
                ])),
               ],
            ),

        )
      //],
      //),
    );
  }
}