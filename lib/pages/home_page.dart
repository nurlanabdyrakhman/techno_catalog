import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:techno_catalog/models/catalog.dart';
import 'package:techno_catalog/widgets/drawer.dart';
import 'package:techno_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  // loadData()async{
  // final  catalogJson=  await  rootBundle.loadString(
  //     '',
  //     );
  //     final decodedDate=jsonDecode(catalogJson);
  //     var productsData=decodedDate['products'];
  //     print(productsData);

  // }
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/undraw_secure_login_pdn4.png");
    final decodedData = jsonDecode(catalogJson);

    var productsData = decodedData["products"];
    CatalogModel.items =
        List.from(productsData)
        .map<Item>((item) => Item.fromMap(item)).toList();
        setState(() {
          
        });
  }

  final int day = 30;

  final String name = 'Nuke';

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Catalog App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        //backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        ?
        ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) =>
            ItemWidget(
              item:CatalogModel.items[index]
            ),
          
        ):Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
