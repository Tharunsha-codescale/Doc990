// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'HomePageScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "Welcome Doc 990!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                Image.asset(
                  'assets/images/welcome.jpg',
                ),

                SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Your Family Channel',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 35,
                ),

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/welcome1.png',
                              width: 200,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'A hospital is no place\nto be sick..\nwe are Always\nwith you..',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 30, top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Get Start',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomePageScreen())));
                          },
                          child: Ink(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                // ignore: prefer_const_constructors
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Colors.redAccent,
                                )
                              ],
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
