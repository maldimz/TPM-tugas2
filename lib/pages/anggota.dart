import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_project/pages/addsub.dart';

class AnggotaPage extends StatelessWidget {
  const AnggotaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var anggota = [
      "Akmal Dimas Pratama",
      "Juan Azhar Adviseta Setiawan",
      "Maulana Daffa Ardiansyah"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Anggota'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddSub()));
            },
            icon: Icon(Icons.navigate_next),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(anggota[index], style: TextStyle(fontSize: 16)),
            ),
          );
        },
        itemCount: anggota.length,
      ),
    );
  }
}
