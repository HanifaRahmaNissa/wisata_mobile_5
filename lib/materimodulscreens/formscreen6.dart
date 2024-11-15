import 'package:flutter/material.dart';

class Formscreen6 extends StatefulWidget {
  const Formscreen6({super.key});

  @override
  State<Formscreen6> createState() => _Formscreen6State();
}

class _Formscreen6State extends State<Formscreen6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("tampilan Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (String value) {
                setState(() {
                  nama = value;
                });
              },
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'masukan nama',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('jenis kelamin : '),
                Radio(
                    value: 'laki-laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('laki-laki'),
                Radio(
                    value: 'perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('perempuan'),
              ],
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('seni'),
              value: seni,
              onChanged: (value) {
                seni = value!;
              },
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('submit'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
