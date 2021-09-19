import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtters'),
      ),
      drawer: Drawer(child: MainDrawer(),),
      body: Center(
        child: Text('Your Filtters !!'),
      ),
    );
  }
}
