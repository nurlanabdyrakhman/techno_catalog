import 'package:flutter/material.dart';
import 'package:techno_catalog/pages/home_page.dart';
import 'package:techno_catalog/pages/login_page.dart';
import 'package:techno_catalog/utils/routes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({super.key});
   
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wellcome Tecnology ',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
       
      ),
      initialRoute: '/',
      routes: {
        
        '/':(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        '/login':(context)=>LoginPage(),
        
      },
      //home:  HomePage()
    );
  }

 
}

