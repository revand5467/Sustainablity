import 'package:flutter/material.dart';
import './Water.dart';
import './sensors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(children: [
                      SizedBox(height: 200),
                      Container(
                          width: double.infinity,
                          child: ElevatedButton(
                              child: Text("Water Consumption "),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => Water()));
                              })),
                      Container(
                          width: double.infinity,
                          child: ElevatedButton(
                              child: Text("Sensors "),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => Sensors()));
                              })),
                    ])))));
  }
}
