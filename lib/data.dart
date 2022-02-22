// //import 'dart:html';

// import 'package:flutter/material.dart';

// final Statistics = const [
//   {
//     'field': 'Temperature',
//     'value': [
//       {"image": "Temperature.png", "number": '37 C'}
//     ]
//   },
//   {
//     'field': 'Moisture',
//     'value': [
//       {"image": "Moisture.png", "number": '642 g/m3'}
//     ]
//   },
//   {
//     'field': 'Humidity',
//     'value': [
//       {"image": "Humidity.png", "number": '32 %'}
//     ]
//   },
// ];

// class Data extends StatelessWidget {
//   @override
//   int sensorIndex = 0;
//   Data(this.sensorIndex);
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//               title: Text("Sensor $sensorIndex Statistics"),
//               leading:
//                   IconButton(icon: Icon(Icons.arrow_back), onPressed: () {})),
//           body: Column(children: [
//             //for (int i = 0; i < 2; i++)
//             buildData(0),
//           ])),
//     );
//   }
// }

// Widget buildData(var i) {
//   int no = 0;
//   buildData(no = i);
//   return Column(children: [
//     Container(
//         height: 40,
//         width: double.infinity,
//         child: Text(Statistics[no]['field'] as String)),
//     SizedBox(
//         height: 300,
//         child: GridView.count(
//             crossAxisCount: 2,
//             childAspectRatio: 1.49,
//             padding: EdgeInsets.zero,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             children: [
//               Image.asset('assets/&Statistics[no][field].png'),
//               Text(Statistics[no]['value'] as String)
//             ])),
//     SizedBox(
//       height: 40,
//     )
//   ]);
// }
//import 'dart:html';

import 'package:flutter/material.dart';
import './usage.dart';

//main() => runApp(Data());
final Statistics = const [
  {
    'field': 'Temperature',
    'value': [
      {"image": "Temperature.png", "number": '37 C'}
    ]
  },
  {
    'field': 'Moisture',
    'value': [
      {"image": "Moisture.png", "number": '642 g/m3'}
    ]
  },
  {
    'field': 'Humidity',
    'value': [
      {"image": "Humidity.png", "number": '32 %'}
    ]
  },
];

class Data extends StatelessWidget {
  @override
  int sensorIndex = 0;
  //var context;
  Data(this.sensorIndex);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("Sensor $sensorIndex Statistics"),
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
          body: ListView(children: [
            Column(children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Temperature")]),
                  )),
              SizedBox(
                  height: 200,
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.49,
                      padding: EdgeInsets.zero,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        Image.asset('assets/Thermometer.png'),
                        Text("37 C"),
                      ])),
              SizedBox(
                height: 0,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Moisture")]),
                  )),
              SizedBox(
                  height: 200,
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.49,
                      padding: EdgeInsets.zero,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        Image.asset('assets/Moisture.png'),
                        Text("'642 g/m3"),
                      ])),
              SizedBox(
                height: 0,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Humidity")]),
                  )),
              SizedBox(
                  height: 200,
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.49,
                      padding: EdgeInsets.zero,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        Image.asset('assets/Humidity.png'),
                        Text("32 %"),
                      ])),
              SizedBox(
                height: 0,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.orange,
                    side: BorderSide(color: Colors.orange),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Usage()));
                  },
                  child: Text("Check the usage")),
              SizedBox(
                height: 20,
              ),
            ])
          ])),
    );
  }
}
