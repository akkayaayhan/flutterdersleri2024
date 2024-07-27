import 'package:flutter/material.dart';

class Ders16ListView extends StatelessWidget {
  const Ders16ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('ListView Özellikleri'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(50)
            ),
            width: 100,
            height: 100,
            child: FlutterLogo(),
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50)
            ),
            width: 100,
            height: 100,
            child: FlutterLogo(),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)
            ),
            width: 100,
            height: 100,
            child: FlutterLogo(),
          ),
          Text('Merhaba')

        ],
      ),


    );
  }
}
