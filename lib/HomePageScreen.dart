// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'SignInScreen.dart';
import 'WelcomeScreen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(
        top: 20,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 80,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                    color: Colors.white),
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    //back icon
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => WelcomeScreen())));
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
                    //1st icon
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {},
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
                            Icons.sort_rounded,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    //text box
                    SizedBox(
                      width: 60,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent,
                            blurRadius: 2,
                          )
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      child: Text(
                        'My Bookings',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    Expanded(child: Container()),
                    //2nd icon
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => SignInScreen())));
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
                            Icons.person_add,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //text
              SizedBox(
                height: 5,
              ),
              // ignore: prefer_const_constructors
              Text(
                'Channel your Doctor',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/images/container.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.7,
                    ),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Doctor-Max 20',
                          // Enabled Border
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          // Focused Border
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),
                          ),
                          // Error Border
                          prefixIcon: Icon(
                            Icons.health_and_safety,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.help,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.h_mobiledata_outlined),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Any Hospitle',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w200),
                            ),
                            Expanded(child: Container()),
                            DropdownButton<String>(
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
                              focusColor: Colors.white,
                              underline: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.local_hospital_rounded),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Any Specialization',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w200),
                            ),
                            Expanded(child: Container()),
                            DropdownButton<String>(
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
                              focusColor: Colors.white,
                              underline: SizedBox(),
                            ),
                          ],
                        ),
                      ),

                      Divider(),

                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_outlined),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Any Date',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //search
                      Container(
                        width: 250,
                        height: 40,
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          label: Text('search'),
                          onPressed: () {
                            print('Button Pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            // ignore: unnecessary_new
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //3rd section

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 37),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pink),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/call.jpg',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Audio/Video',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Consultation',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pink),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/medicine.jpg',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Medicine',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'your Doorstep',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pink),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/report.jpg',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Lab Report',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Yoru Fingertips',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 37),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pink),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/pcr.jpg',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'PCR',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Test',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pink),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/vet.jpg',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Vet Care',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'by SLVA',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pink),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/tablet.png',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Find',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'My Meds',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //4th section image slider
              SizedBox(
                height: 20,
              ),

              Container(
                padding: EdgeInsets.only(left: 22),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 110,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 290,
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.black,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/hospitle${index + 1}.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
