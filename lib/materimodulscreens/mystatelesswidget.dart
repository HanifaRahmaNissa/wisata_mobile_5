import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini stateless widget",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('ini APP Bar'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/katus.png',
            width: 150,
            height: 150,
          ),
          Text(
            'kaktus',
            style: TextStyle(
              fontSize: 38,
              color: Colors.blueAccent,
              letterSpacing: 1.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ]),
      ),
    );
  }
}
