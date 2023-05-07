import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1),);
    await Navigator.pushNamed(context, MyRoutes.homeRoute,);
    }
  }

  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/undraw_hey_email_liaa.png',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Inter UserName',
                        labelText: 'Username',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Username connot be empty';
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Password connot be empty';
                        } else if (val.length < 6) {
                          return 'Password lenght should be atleats6';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          color: changeButton ? Colors.blue : Colors.red,
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
      ),
    );
  }
}
