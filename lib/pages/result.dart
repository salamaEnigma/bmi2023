import 'package:flutter/material.dart';

import 'dart:math';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String checkResult(double input) {
    if (input > 25) {
      return "over Weight";
    } else if (input < 25) {
      return "Normal";
    } else {
      return "Not Normal at all";
    }
    return "";
  }

  String explanation(double input) {
    if (input > 25) {
      return "g";
    } else if (input < 25) {
      return "o";
    } else {
      return "s";
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)?.settings.arguments as double;

    /// استقبال ال result من الصفحه السابقه

    ///
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "YOUR RESULT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.80,
                  decoration: BoxDecoration(
                    borderRadius: (BorderRadius.circular(10)),
                    color: Color.fromRGBO(30, 30, 40, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(27),
                        child: Text(
                          checkResult(result),
                          style: TextStyle(
                              fontSize: 33, color: Colors.greenAccent),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${result.toStringAsFixed(2)}",
                            style: TextStyle(fontSize: 33, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        explanation(result),
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    double calculateBMI(
                        {required double weight, required double height}) {
// BMI = weight(kg) / height(m)^2
                      final result = weight / pow(height, 2);
                      return result;
                    }

                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.red,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    minimumSize: const Size(350, 60),
                  ),
                  child: const Text("RE-CALCULATE YOUR BMI",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
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
