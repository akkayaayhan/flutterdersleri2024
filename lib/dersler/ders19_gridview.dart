import 'package:flutter/material.dart';

class Ders19GridView extends StatelessWidget {
  const Ders19GridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Kutuphane> kitap=[
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
      Kutuphane("ayhan akkaya", "sefiller", "17072024"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,

          ),
          itemCount: kitap.length,
          itemBuilder: (context,index){
            return Card(
                color: Colors.pink.shade100,
                child: Text(kitap[index].kitapAdi));
          }),
    );
  }
}

class Kutuphane{
  final kitapAlan;
  final kitapAdi;
  final teslimTarihi;

  Kutuphane(this.kitapAlan, this.kitapAdi, this.teslimTarihi);
}
