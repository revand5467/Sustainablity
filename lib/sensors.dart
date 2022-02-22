//import 'dart:js';
import "./data.dart";
import 'package:flutter/material.dart';

class Sensors extends StatefulWidget {
  @override
  _SensorsState createState() => _SensorsState();
}

class _SensorsState extends State<Sensors> {
  @override
  var Index = 4;
  void add() {
    setState(() {
      Index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text("Sensors")),
        body: SingleChildScrollView(
          child: Column(children: [
            for (int i = 1; i < Index; i++) buildSensor(i, context)
          ]) // Place child here
          ,
        ),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Increment',
            child: new Icon(
              Icons.add,
              color: Colors.red,
            ),
            backgroundColor: Colors.yellow,
            onPressed: () {
              add();
            }));
  }
}

Widget buildSensor(int i, var context) {
  return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
          width: double.infinity,
          child: ElevatedButton(
              child: Text("Sensor $i"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Data(i)));
              })));
}
