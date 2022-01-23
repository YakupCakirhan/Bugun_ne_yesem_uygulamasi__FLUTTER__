// ignore_for_file: camel_case_types, unused_import, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'BUGÜN NE YESEM',
            style: TextStyle(color: Colors.black45),
          ),
        ),
        body: const yemekSayfasi(),
      ),
    );
  }
}

class yemekSayfasi extends StatefulWidget {
  const yemekSayfasi({Key? key}) : super(key: key);

  @override
  _yemekSayfasiState createState() => _yemekSayfasiState();
}

class _yemekSayfasiState extends State<yemekSayfasi> {
  int corbaNo = 1;
  int tatliNo = 1;
  int yemekNo = 1;
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuk suyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnı Yarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazan Dibi',
    'Dondurma'
  ];

  

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.white10,
              highlightColor: Colors.white,
              splashColor: Colors.white,
              onPressed: yemekleriYenile,
              padding: const EdgeInsets.all(12),
              child: Image.asset('assets/corba_$corbaNo.jpg'),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          
            
            
            
                Container(
                 width: 200,
                 child: const Divider(
                  height: 3,
                  color: Colors.black87,
            ),
             ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                color: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
            Container(
            width: 200,
            child: const Divider(
              height: 3,
              color: Colors.black87,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                color: Colors.white10,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 3,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
