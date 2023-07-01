/* Jelo Miranda
Team: Looshifer
Project Name: VisitA Lab
Feature: [VLAB-001] Register
Feature description: 
As a user, I want to register.

‌
The user is able to register successfully.
 */

// changes yey\

// This will allow the user to signgit up for an account.

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(25), // here the desired height
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 9, 6, 184),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 100,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset(
                        'assets/Ateneo_de_Naga_University_logo.png')),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset('assets/logo1.png'),
            Column(
              children: [
                SizedBox(height: 50),
              ],
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Student ID Number',
                    hintText: 'Student ID Number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Password'),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Color.fromARGB(255, 216, 185, 11), fontSize: 14),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 216, 185, 11),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  //TODO HOME SCREEN GOES HERE
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Text(
              "Don't have an account yet?",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            TextButton(
              child: const Text(
                "Sign up",
                style: TextStyle(
                  color: Color.fromARGB(255, 206, 180, 35),
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Signup())); //signup screen
              },
            )
          ],
        ),
      ),
    );
  }
}
