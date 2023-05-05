import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final int day = 30;
  final String name = 'Nuke';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
        //backgroundColor: Colors.transparent,
        
      ),
      body:
        Center(
          child: Text('Wellcome Tecnology day-${day}  gg$name'),
      
        
      ),
      drawer: Drawer(),
    );
  }
}
