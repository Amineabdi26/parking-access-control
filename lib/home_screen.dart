import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Keyboard_screen.dart';
import 'admin_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 101, 108, 238),
      /*appBar: AppBar(
        title: Text(
          "Parking",
          textAlign: TextAlign.center,
        ),
      ),*/

      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(320, 0, 20, 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AdminScreen()));
              },
              child: ClipRRect(
                child: Image.asset('assets/admin.png', width: 30, height: 30),
              ),
            ),
            /* Container(
              width: 30,
              height: 30,
              child: ,
              /*decoration: BoxDecoration(
                
                image: DecorationImage(
                  image: AssetImage("assets/admin.png"),
                ),
              ),*/
            ),*/
          ),
          Container(
            height: 10,
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            //color: Colors.amber,
          ),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/parking.png"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
            child: Container(
              child: Text(DateTime.now().toString().substring(0, 10),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
            child: Container(
              child: Text("   9" + DateTime.now().toString().substring(13, 16),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: Color.fromARGB(255, 255, 157, 77),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  //blurRadius: 8.0,
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => KeyboardScreen()));
              },
              child: Text("Welcome to our Secure parking",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
