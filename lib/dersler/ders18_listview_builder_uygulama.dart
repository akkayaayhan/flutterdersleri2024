import 'package:flutter/material.dart';

class Ders18ListViewBuilderUygulama extends StatelessWidget {
  const Ders18ListViewBuilderUygulama({super.key});



  @override
  Widget build(BuildContext context) {
    //List<int> sayilar=List.generate(100, (index)=>index*2);
    List<Ogrenci> ogrenciler=[
      Ogrenci("Ayhan", 345),
      Ogrenci("Ayşe", 1345),
      Ogrenci("Fatma", 3145),
      Ogrenci("Ali", 3451),
      Ogrenci("Veli", 3415),
      Ogrenci("Can", 3245),
      Ogrenci("Ayhan", 345),
      Ogrenci("Ayşe", 1345),
      Ogrenci("Fatma", 3145),
      Ogrenci("Ali", 3451),
      Ogrenci("Veli", 3415),
      Ogrenci("Can", 3245),
      Ogrenci("akkayasoft", 100)

    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: ogrenciler.length,
          itemBuilder: (context,index){
            var secilenOgrenci=ogrenciler[index];
            return Card(
              color: Colors.tealAccent,
              child: ListTile(
                title: Text(secilenOgrenci.ogrenciAd.toString()),
                subtitle: Text(secilenOgrenci.ogrenciNo.toString()),
              ),
            );
          }
      ),
    );
  }
}

class Ogrenci{
  final ogrenciAd;
  final ogrenciNo;
  Ogrenci(this.ogrenciAd, this.ogrenciNo);


}