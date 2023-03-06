import 'dart:math';

import 'package:flutter/material.dart';

import 'equation.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  /// put all variable here
  Color iconColor = Colors.white70;
  Color iconColor2 = Colors.white70;
  double height = 1;
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  double age = 1;
  double weight = 1;

  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    isFemaleSelected = !isFemaleSelected;
                    isMaleSelected = false;
                    setState(() {});
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.39,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, //x
                      mainAxisAlignment: MainAxisAlignment.center, //y
                      children: [
                        Icon(
                          Icons.female,
                          size: 80,
                          color: isFemaleSelected
                              ? Colors.blueAccent
                              : Colors.white70,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Color.fromRGBO(30, 30, 50, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.39,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          isMaleSelected = !isMaleSelected;
                          isFemaleSelected = false;
                          // if (isMaleSelected) {
                          //   isMaleSelected = false;
                          // } else {
                          //   isMaleSelected = true;
                          // }
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center, //x
                          mainAxisAlignment: MainAxisAlignment.center, //y
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,

                              /// salama edit color
                              color: isMaleSelected
                                  ? Colors.blueAccent
                                  : Colors.white70,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Color.fromRGBO(30, 30, 50, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          textAlign: TextAlign.center,
                          "HEIGHT",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 3,
                    ),
                    Slider(
                      activeColor: Colors.white,
                      thumbColor: Colors.redAccent,
                      inactiveColor: Colors.white38,
                      min: 0.0,
                      max: 300.0,

                      ///Salama edit
                      value: height,

                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,

                              ///Salama edit2
                              "${height.toStringAsFixed(1)} cm",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Color.fromRGBO(30, 30, 40, 1),
              ),
            ), //slider
            const SizedBox(
              height: 27,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      ///
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.39,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center, //x
                        // mainAxisAlignment: MainAxisAlignment.center, //y
                        children: [
                          // SizedBox(
                          //   height: 16,
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "AGE",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${age.toStringAsFixed(1)}",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                hoverColor: Colors.redAccent,
                                child: Icon(Icons.add),
                                backgroundColor: Colors.green,
                                onPressed: () {
                                  age++;
                                  setState(() {});
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              //abstractCounter
                              FloatingActionButton(
                                hoverColor: Colors.redAccent,
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.green,
                                onPressed: () {
                                  if (age > 1) {
                                    age--;
                                  }

                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Color.fromRGBO(30, 30, 50, 1),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      ///
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center, //x
                        // mainAxisAlignment: MainAxisAlignment.center, //y
                        children: [
                          // SizedBox(
                          //   height: 16,
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "WEIGHT",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                hoverColor: Colors.redAccent,
                                child: Icon(Icons.add),
                                backgroundColor: Colors.green,
                                onPressed: () {
                                  /// Salalma edit
                                  weight++;

                                  setState(() {});
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              //abstractCounter
                              FloatingActionButton(
                                ///  changed
                                hoverColor: Colors.redAccent,
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.green,
                                onPressed: () {
                                  ///salama edit
                                  if (weight > 1) {
                                    weight--;
                                  }
                                  ;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Color.fromRGBO(30, 30, 50, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),

            ElevatedButton(
              onPressed: () {
                final result = weight /
                    pow(height / 100,
                        2); // rename counter 2 => weight , counter => age , _value=> hight
                print(" Result:$result");

                Navigator.pushNamed(context, "/result", arguments: result);
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                minimumSize: const Size(350, 60),
              ),
              child: const Text("CALCULATE YOUR BMI",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),

            ///
          ],
        ),
      ),
      drawer: Drawer(),
      backgroundColor: Color.fromRGBO(10, 0, 40, 30),
      appBar: AppBar(
          elevation: 4,
          shadowColor: Color.fromRGBO(50, 30, 80, 1),
          backgroundColor: Color.fromRGBO(15, 20, 57, 0),
          title: (Text(
            "BMI CALCULATOR",
            style: TextStyle(fontWeight: FontWeight.bold),
          ))),
    );
  }
}
