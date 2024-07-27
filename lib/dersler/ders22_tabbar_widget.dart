import 'package:flutter/material.dart';

class Ders22TabBarWidget extends StatefulWidget {
  const Ders22TabBarWidget({super.key});

  @override
  State<Ders22TabBarWidget> createState() => _Ders22TabBarWidgetState();
}

class _Ders22TabBarWidgetState extends State<Ders22TabBarWidget> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController=TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Widget'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          indicatorWeight: 4.0,
          tabs: [
            Tab(icon: Icon(Icons.directions_car),text: "Car",),
            Tab(icon: Icon(Icons.directions_transit),text: "Transit",),
            Tab(icon: Icon(Icons.directions_bike),text: "Bike",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
         children: [
           CarPage(),
           TransitPage(),
           BikePage(),
         ],
      ),

    );
  }
}

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Car Content"));
  }
}

class TransitPage extends StatelessWidget {
  const TransitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("TransitPage Content"));
  }
}

class BikePage extends StatelessWidget {
  const BikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("BikePage Content"));
  }
}
