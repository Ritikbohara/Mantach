import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mantec/home.dart';
import 'package:mantec/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade900, Colors.blue.shade500],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Multiple Background Images
          Positioned(
            top: 50,
            left: 30,
            child: Opacity(
              opacity: 0.3, // Adjust transparency
              child: Image.asset('assets/group1.png', width:100),
            ),
          ),
          Positioned(
            top: 130,
            right: 5,
            child: Opacity(
              opacity: 0.3, // Adjust transparency
              child: Image.asset('assets/group5.png', width:250),
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
            bottom: 220,
            right: 1,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/group2.png', width: 100),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 5,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset('assets/group3.png', width: 100),
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

          // Glassmorphic Login Card
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
                      Text("Login",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 25),
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
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Forgot Password?",
                            style: TextStyle(color: Colors.white70)),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade900,
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> HomePage()));
                        },
                        child: Text("Sign in",
                            style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                      SizedBox(height: 20),
                      Text("or continue with",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 20),
                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child:
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialButton('assets/github.png'),
                          SizedBox(width: 20),
                          socialButton('assets/google.png'),
                          SizedBox(width: 20),
                          socialButton('assets/facebook.png'),
                        ],
                      ),),

                      SizedBox(height: 20),
                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()),
                      );},child:
                      Text.rich(
                        TextSpan(
                          text: "Don't have an account yet? ",
                          style: TextStyle(color: Colors.white70),
                          children: [
                            TextSpan(
                              text: "Register Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),)
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

  Widget socialButton(String assetPath) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(assetPath, height: 30),
    );
  }
}
