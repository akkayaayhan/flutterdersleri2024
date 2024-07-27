import 'package:flutter/material.dart';

import 'ders16_listview.dart';
import 'ders17_listview_builder.dart';
import 'ders18_listview_builder_uygulama.dart';
import 'ders19_gridview.dart';
import 'ders20_sliver_widget.dart';


class Ders21PageView extends StatelessWidget {
  const Ders21PageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: PageView(
        
        children: [
          Ders16ListView(),
          Ders17ListViewBuilder(),
          Ders18ListViewBuilderUygulama(),
          Ders19GridView(),
          Ders20SliverWidget()
        ],
      ),
    );
  }
}
