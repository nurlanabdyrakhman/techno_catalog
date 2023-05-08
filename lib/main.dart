import 'package:flutter/material.dart';
import 'package:techno_catalog/pages/home_page.dart';
import 'package:techno_catalog/pages/login_page.dart';
import 'package:techno_catalog/utils/routes.dart';
import 'package:techno_catalog/widgets/themes.dart';

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
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
    
      initialRoute: MyRoutes.homeRoute,
      routes: {
        
        '/':(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        '/login':(context)=>LoginPage(),
        
      },
      //home:  HomePage()
    );
  }

 
}

