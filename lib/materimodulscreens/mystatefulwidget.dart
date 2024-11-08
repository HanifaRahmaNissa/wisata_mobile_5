import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _MystatefulwidgetState();
}

class _MystatefulwidgetState extends State<Mystatefulwidget> {
  var _jumlahHitungan = 0;

  void _tambahAngka() {
    setState(() {
      _jumlahHitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini stateful widget",
      home: Scaffold(
        body: Column(
          children: [
            Text("$_jumlahHitungan"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  _tambahAngka();
                },
                child: Text("tekan tombol ini")),
          ],
        ),
      ),
    );
  }
}
