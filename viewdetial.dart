import 'package:flutter/material.dart';

class viewDatiels extends StatefulWidget {
  @override
  State<viewDatiels> createState() => _viewDatielsState();
}

class _viewDatielsState extends State<viewDatiels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Number of days",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "GPA",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ]),
      ),
    );
  }
}
