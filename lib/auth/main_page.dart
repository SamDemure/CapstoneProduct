import 'package:adet/auth/authpage.dart';
import 'package:adet/homepage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool>(
        future: checkIfUserAuthenticated(), // Assuming this function checks if user is authenticated
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator while checking authentication status
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasError) {
              // Handle error if occurred during authentication check
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              if (snapshot.data == true) {
                // User is authenticated, show the HomePage
                return HomePage();
              } else {
                // User is not authenticated, show the Authpage
                return Authpage();
              }
            }
          }
        },
      ),
    );
  }

  Future<bool> checkIfUserAuthenticated() async {
    // Implement logic to check if user is authenticated
    // For example, you can check if there is a token or session stored
    // Return true if authenticated, false otherwise
    return false; // For demo, assuming user is not authenticated
  }
}
