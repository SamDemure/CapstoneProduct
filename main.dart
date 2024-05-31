import 'package:adet/bdrrmView/epmonitoring.dart';
import 'package:adet/bdrrmView/mainDashboard.dart';
import 'package:adet/bdrrmView/sidebarNav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pre Evacuation Alert Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyResponsiveLayout(),
    );
  }
}

class MyResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenWidth > 600) {
          // Tablet layout
          return Scaffold(
            appBar: AppBar(
              title: Text('Pre Evacuation Alert Dashboard - Tablet'),
            ),
            drawer: NavBar(), // Add the side navigation drawer here
            body: Center(
              child: Column(
                children: [
                  PreEvacAlertDashboard(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EpMonitoring()),
                      );
                    },
                    child: Text('Go to EP Monitoring'),
                  ),
                ],
              ),
            ),
          );
        } else {
          // Mobile layout
          return Scaffold(
            appBar: AppBar(
              title: Text('Pre Evacuation Alert Dashboard - Mobile'),
            ),
            drawer: NavBar(), // Add the side navigation drawer here
            body: Center(
              child: Column(
                children: [
                  PreEvacAlertDashboard(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EpMonitoring()),
                      );
                    },
                    child: Text('Go to EP Monitoring'),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}