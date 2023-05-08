import 'package:flutter/material.dart';
import 'package:flutter_application_5/menu.dart';
import 'package:flutter_application_5/singup.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In "),
        leading: Icon(Icons.login_outlined),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup()));
              },
              icon: Icon(Icons.account_circle_rounded))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.person_outline_rounded,
                  size: 100,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 90,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)),
                      labelText: 'Email',
                      hintText: 'example@gmail.com'),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)),
                      labelText: 'Password',
                      hintText: '*****'),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => menu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Sign In"),
                    )),
                SizedBox(
                  height: 180,
                ),
                InkWell(
                  child: Text(
                    "New member ? please create account",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
