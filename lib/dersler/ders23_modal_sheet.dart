import 'package:flutter/material.dart';

class Ders23ModalSheet extends StatelessWidget {
  const Ders23ModalSheet({super.key});

  @override
  Widget build(BuildContext context) {

    void _showModalBottomSheet(BuildContext context){
      showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
          ),
          backgroundColor: Colors.blueAccent,
          builder: (BuildContext context){
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Modal Bottom Sheet"),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close"))
              ],
            ),
          ),
        );

          }
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _showModalBottomSheet(context);
          },
          child: Text("Show Modal Bottom Sheet"),

        ),
      ),
    );
  }
}
