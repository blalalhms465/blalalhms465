  import 'dart:async';
  import 'home.dart';
  import 'package:flutter/material.dart';

  class splash extends StatefulWidget {
    @override
    _splashState createState() => _splashState();
  }

  class _splashState extends State<splash> {
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      Timer(Duration(seconds: 3), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
      });
    }

    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.center,
        height: 300,
        width: 300,
        color: Colors.blue,
        child: Icon(
          Icons.person,
          size: 200,
        ),
      );
    }
  }
