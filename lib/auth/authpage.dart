import 'package:adet/loginRegis/loginpage.dart';
import 'package:adet/loginRegis/regis.dart';
import 'package:flutter/material.dart';

class Authpage extends StatefulWidget {
  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  void _showRegisterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage(showLoginPage: _showLoginPage)),
    );
  }

  void _showLoginPage() {
    setState(() {
      // Show login page
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initially show login page
    return LoginPage(
      showRegisterPage: _showRegisterPage,
    );
  }
}
