
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                accountName: Text('Nurlan'),
                accountEmail: Text('abdyraknurlan@gmail.com'),
                currentAccountPicture: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB3x4MRr71onGt8KTr6xFZyQBc4cwAz7p5ww&usqp=CAU',
                width: 50,height: 50,)
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.brown,
                size: 24,
              ),
              title: Text(
                'Home',
                textScaleFactor: 2,
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ), ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.cyan,
                size: 24,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.brown,
                size: 24,
              ),
              title: Text(
                'Mail me',
                textScaleFactor: 2,
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
