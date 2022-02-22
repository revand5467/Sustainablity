import 'package:flutter/material.dart';

class Usage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text("Usage")),
          body: ListView(children: [
            Column(children: [
              Container(
                alignment: Alignment(0.0, 0.0),
                child: Text("Last 24 hours"),
              ),
              Container(height: 200, child: Image.asset('assets/usage1.png')),
              Container(
                alignment: Alignment(0.0, 0.0),
                child: Text("Last 7 days"),
              ),
              Container(height: 200, child: Image.asset('assets/usage2.png')),
              Container(
                alignment: Alignment(0.0, 0.0),
                child: Text("This month"),
              ),
              Container(height: 200, child: Image.asset('assets/usage3.png')),
            ])
          ])),
    );
  }
}
