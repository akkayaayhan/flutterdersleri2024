import 'package:flutter/material.dart';

class Ders17ListViewBuilder extends StatelessWidget {
  const Ders17ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> ogrenciNo=[112,445,367,830,612,117,253,1122,123,346,908];
    List<String> ogrenciAd=["Ahmet","Ayhan","Ayşe","Can","Suna","Emine","Nihat","Ece","Ali","Can","Veli"];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ListView Builder'),
      ),
      body: ListView.builder(
        itemCount: ogrenciAd.length,
          itemBuilder: (context,index){
            return Card(
              color: Colors.pink.shade50,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Öğrenci Adı :${ogrenciAd[index]}",style: TextStyle(fontSize: 30),),
                subtitle: Text("Öğrenci No : ${ogrenciNo[index]}"),
                trailing: Icon(Icons.arrow_forward),
              ),
            );
          },
      ),
    );
  }
}
