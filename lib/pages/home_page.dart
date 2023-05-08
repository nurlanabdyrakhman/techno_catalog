import 'package:flutter/material.dart';
import 'package:techno_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final int day = 30;
  final String name = 'Nuke';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Catalog App',style:TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
        //backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text('Wellcome Tecnology day-${day}  gg$name',),
      ),
      drawer: MyDrawer(),
    );
  }
}
