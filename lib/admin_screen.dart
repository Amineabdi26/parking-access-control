import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parking_app_sqlite/admin_homeScreen.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

TextEditingController adminController = new TextEditingController();
TextEditingController pswController = new TextEditingController();

class _AdminScreenState extends State<AdminScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromARGB(255, 101, 108, 238),
      body: Column(children: [
        SizedBox(
          height: 130,
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextField(
            controller: adminController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Admin',
              //fillColor: Colors.amberAccent,
            ),
          ),
        ),
        SizedBox(
          height: 0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: TextField(
            controller: pswController,
            obscureText: true,
            enableSuggestions: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                if ((adminController.text == "admin") &&
                    (pswController.text == "123456")) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => adminHomeScreen()));
                } else {
                  Fluttertoast.showToast(
                    msg: "Please check your username or your password",
                    backgroundColor: Colors.grey,
                    fontSize: 15,
                    //       // gravity: ToastGravity.TOP,
                    // textColor: Colors.pink
                  );
                }
              },
              child: Text('Log In'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 101, 108, 238),
                minimumSize: Size(100, 40),
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // <-- Radius
                ),
              ),
            )),
      ]),
    );
  }
}
