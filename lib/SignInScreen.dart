// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'HomePageScreen.dart';
import 'SignUpScreen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 280),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            blurRadius: 2,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/signin.png',
                ),

                SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),

                //textbox

                Container(
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: ' Email Addres',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),

                Container(
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: ' Passward',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child:
                              Icon(Icons.remove_red_eye, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),

                //button

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 120.0, vertical: 10.0),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),

                //text

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 68),
                  child: Row(
                    children: [
                      Text(
                        'Dont have an account yet?',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        // ignore: unnecessary_new
                        child: new Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.red),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  // ignore: unnecessary_new
                  child: new Text(
                    'Forget passward',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
