import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStatefull extends StatefulWidget {
  const AppStatefull({super.key});

  @override
  State<AppStatefull> createState() => _AppStatefullState();
}

class _AppStatefullState extends State<AppStatefull> {
  int angka = 0;
  String prima = ' ';
  void tekanAku() {
    setState(() {
      angka += 1;
      prima = 'Bilangan prima = ';
      if (angka > 45) {
        angka = 0;
      }
      for (int i = 1; i < angka; i++) {
        int num = 0;
        for (int j = 1; j <= i; j++) {
          if (i % j == 0) {
            num = num + 1;
          }
        }
        if (num == 2) {
          prima += '$i, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh AppStateless',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => tekanAku(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('HARTANTI'),
        ),
        body: Center(
          child: Text(
            // 'angka : $angka,',prima,
            prima,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
