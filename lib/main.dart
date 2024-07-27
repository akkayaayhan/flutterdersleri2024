import 'package:flutter/material.dart';
import 'package:myapp/dersler/ders21_pageview.dart';
import 'package:myapp/dersler/ders24_dialog_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Ders24DialogWidgets(),
    );
  }
}
