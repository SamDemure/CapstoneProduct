import 'package:adet/loginRegis/loginpage.dart';
import 'package:adet/loginRegis/regis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flood Risk Reduction and Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(
        showRegisterPage: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterPage(
                showLoginPage: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        }, showLoginPage: () {},
      ),
    );
  }
}
