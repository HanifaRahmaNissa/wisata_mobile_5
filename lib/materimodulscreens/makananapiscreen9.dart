import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/makanan_model.dart';
import 'package:wisata_mobile_5/services/makanan_service.dart';
import 'package:wisata_mobile_5/widgets/makanan_card.dart';

class Makananapiscreen9 extends StatelessWidget {
  final MakananService _makananService = MakananService();

  Makananapiscreen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'daftar makanan seafood',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder<List<MakananModel>>(
        future: _makananService.fetchMakanan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text("error : ${snapshot.error}"),
            );
          } else {
            final daftarSeafood = snapshot.data!;
            return ListView.builder(
                itemCount: daftarSeafood.length,
                itemBuilder: (context, index) {
                  return MakananCard(makananModel: daftarSeafood[index]);
                });
          }
        },
      ),
    );
  }
}
