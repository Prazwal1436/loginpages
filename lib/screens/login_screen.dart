// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'package:loginapp/screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (value) {
        setState(() {
          username = value;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "User Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurpleAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (username == "prazwal" && password == "pass") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            showAlertDialog(context);
          }
        },
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.supervised_user_circle,
                      size: 110,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(height: 50),
                    usernameField,
                    SizedBox(height: 5),
                    passwordField,
                    SizedBox(height: 20),
                    myLoginButton,
                    SizedBox(height: 100),
                    Text(
                      "Aone Skills International",
                      style: myStyle,
                    )
                  ],
                ),
              ],
            )),
      )),
    );
  }
}

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        child: Text('Please Enter The Items'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  AlertDialog alert = AlertDialog(
    title: Text("Warning"),
    content: Text("Crediantials doesnt match"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
