import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/undraw_secure_login_pdn4.png',
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Wellcome $name',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Inter UserName',
                      labelText: 'Username',
                    ),
                    onChanged: (val) {
                      setState(() {
                        name = val;
                      });
                    },
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                    await  Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        color: Colors.red,
                      ),
                      alignment: Alignment.center,
                      child: changeButton ? Icon(Icons.done) : Text('Login'),
                    ),
                  )
                  //  ElevatedButton(onPressed: (){
                  // //Navigator.pushNamed(context, MyRoutes.homeRoute);
                  // setState(() {
                  //    changeButton=true;
                  // });
                  //  },
                  //  child: Container(
                  //   width: changeButton?   50:150,
                  //   height: 50,
                  //   child:changeButton?Icon(Icons.done): Text('Login')),
                  //  style: TextButton.styleFrom(
                  //   minimumSize: Size(100,30,)
                  //  )
                  //  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
