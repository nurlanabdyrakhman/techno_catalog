
import 'package:flutter/material.dart';
import 'package:techno_catalog/models/catalog.dart';


class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item}):assert(item!=null);
   final Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: ListTile(
        onTap: (){
          print('sss');
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text('\$${item.price}',
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
         
        ),
        ),
      ),
    );
  }
}