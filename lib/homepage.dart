import 'package:adet/bdrrmView/sidebarNav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      drawer: NavBar(), // Add the side navigation drawer here
      body: Center(
        child: Text('Welcome to the Home Page'),
        
      ),
    );
  }
}
