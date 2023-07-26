// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'ÇAL KEKE ÇAL',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: DavulSayfasi(),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}

class DavulSayfasi extends StatefulWidget {
  const DavulSayfasi({Key? key}) : super(key: key);

  @override
  State<DavulSayfasi> createState() => _DavulSayfasiState();
}

class _DavulSayfasiState extends State<DavulSayfasi> {
  final oynatici = AudioPlayer();
  void sesiOynat(String sesAdi) {
    var ses = AssetSource('$sesAdi.wav');
    oynatici.play(ses);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                davulButon('bip', Colors.blueAccent),
                davulButon('bongo', Colors.yellowAccent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                davulButon('clap1', Colors.orangeAccent),
                davulButon('clap2', Colors.redAccent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                davulButon('clap3', Colors.pinkAccent),
                davulButon('crash', Colors.lightGreenAccent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                davulButon('how', Colors.yellowAccent),
                davulButon('woo', Colors.cyanAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded davulButon(String sesAdi, Color renk) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sesiOynat(sesAdi);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            color: renk,
          ),
        ),
      ),
    );
  }
}
