import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parking_app_sqlite/home_screen.dart';
import 'package:parking_app_sqlite/welcome_screen.dart';
import 'package:parking_app_sqlite/DatabaseHelper.dart';

class KeyboardScreen extends StatefulWidget {
  @override
  _KeyboardScreenState createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
  late int i = 0;
  String code = "";
  String chiffre = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                child: Text(chiffre,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      //color: Color.fromARGB(255, 255, 255, 255),
                    )),
              ),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "1";
                          }

                          print(code);
                        },
                        child: Text('1',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "2";
                          }
                        },
                        child: Text('2',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "3";
                          }
                          print(chiffre);
                          print(code);
                        },
                        child: Text('3',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "4";
                          }
                          print(code);
                        },
                        child: Text('4',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "5";
                          }
                          print(code);
                        },
                        child: Text('5',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "6";
                          }
                          print(code);
                        },
                        child: Text('6',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "7";
                          }
                          print(code);
                        },
                        child: Text('7',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "8";
                          }
                          print(code);
                        },
                        child: Text('8',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "9";
                          }
                          print(code);
                        },
                        child: Text('9',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          chiffre = "";
                        });
                        code = "";
                        print(code);
                        // print("You pressed Icon Elevated Button");
                      },
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                      ), //icon data for elevated button
                      label: Text(""), //label text
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        onPrimary: Colors.black,
                        minimumSize: Size(80, 80),
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (chiffre.length < 4) {
                            setState(() {
                              chiffre = chiffre + "*";
                            });
                            code = code + "0";
                          }
                          print(code);
                        },
                        child: Text('0',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              //color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Colors.black,
                          minimumSize: Size(80, 80),
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // <-- Radius
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        bool exists = await DatabaseHelper.instance
                            .checkIfCodeExists(code);
                        if (exists == true) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                        } else
                          setState(() {
                            chiffre = "";
                            code = "";
                          });
                        i++;
                        if (i == 1) {
                          Fluttertoast.showToast(
                              // ignore: prefer_interpolation_to_compose_strings
                              msg: "invalid code you still have 2 chance",
                              backgroundColor: Colors.grey,
                              fontSize: 15);
                        }
                        if (i == 2) {
                          Fluttertoast.showToast(
                              // ignore: prefer_interpolation_to_compose_strings
                              msg: "invalid code you still have 1 chance",
                              backgroundColor: Colors.grey,
                              fontSize: 15);
                        }

                        print(i);
                        if (i == 3) {
                          Fluttertoast.showToast(
                              // ignore: prefer_interpolation_to_compose_strings
                              msg: "invalid code ",
                              backgroundColor: Colors.grey,
                              fontSize: 15);
                          print("your code is invalid");
                          i = 0;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                        }

                        // print("You pressed Icon Elevated Button");
                      },
                      icon: Icon(
                        Icons.check,
                        size: 30,
                      ), //icon data for elevated button
                      label: Text(""), //label text
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        onPrimary: Colors.black,
                        minimumSize: Size(80, 80),
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
