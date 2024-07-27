import 'package:flutter/material.dart';

class Ders20SliverWidget extends StatelessWidget {
  const Ders20SliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            expandedHeight: 200,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Widget",style: TextStyle(color: Colors.white),),
              background: Image.network("https://picsum.photos/200/300",fit: BoxFit.cover,),
            ),
          ),

          SliverList(delegate: SliverChildBuilderDelegate(
              (context,index){
                return ListTile(
                  title: Text("Merhaba $index"),
                  subtitle: Text("akkayasoft "),
                );

              },
            childCount: 15
          ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate(
              (context,index){
                return Container(
                  color: Colors.tealAccent,
                  child: Text("Grid $index"),
                );
              }
          ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
              ))
        ],
      ),
    );
  }
}
