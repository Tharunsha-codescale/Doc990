// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'SignInScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool agree = false;

  List<String> _locations = ['Mr', 'Mrs', 'Miss', 'Mrs'];
  // ignore: prefer_final_fields
  String _selectedLocation = 'Please choose a Title';

  @override
  Widget build(BuildContext context) {
    List<String> _locations = ['Mr', 'Mrs', 'Miss', 'Mrs'];
    var _selectedval = 'Mr';
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
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
                //title
                Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Title',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(child: Container()),
                    Container(
                      child: DropdownButton<String>(
                        items: <String>['Mr', 'Mrs', 'Miss', 'Mrs']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 30,
                        underline: SizedBox(),
                        focusColor: Colors.white,
                        isDense: true,
                      ),
                    ),
                  ],
                ),

                //Name
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: ' Display Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: ' Email Addres',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 210,
                      height: 90,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: ' TP Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: ' Medicle registration number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: ' Passward',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(Icons.remove_red_eye, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'How to choose a better passward',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //agreement section

                Row(
                  children: [
                    Material(
                      child: Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                    ),
                    Text(
                      'I have read and accept terms and conditions',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                //button

                SizedBox(
                  height: 20,
                ),

                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 120, vertical: 10.0),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.red,
                    ),
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'View/Download agreement',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
