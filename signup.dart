import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mantec/login.dart';

import 'auth_service.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  @override
  final  name = TextEditingController();
  final  email = TextEditingController();
  final  password = TextEditingController();
  final  conformpassword = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple.shade900, Colors.purple.shade500],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),


          Positioned(
            top: 50,
            left: 30,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/group1.png', width: 100),
            ),
          ),
          Positioned(
            top: 130,
            right: 5,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/group5.png', width: 250),
            ),
          ),
          Positioned(
            bottom: 250,
            right: 10,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/group2.png', width: 100),
            ),
          ),
          Positioned(
            bottom: 135,
            left: 15,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset('assets/group4.png', width: 220),
            ),
          ),

          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 350,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Sign Up",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          hintText: "Full Name",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          hintText: "username@gmail.com",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white70),
                          suffixIcon:
                          Icon(Icons.visibility_off, color: Colors.white70),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: Colors.white70),
                          suffixIcon:
                          Icon(Icons.visibility_off, color: Colors.white70),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple.shade900,
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text("Sign Up",
                            style: TextStyle(fontSize: 18, color: Colors.white)),

                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

