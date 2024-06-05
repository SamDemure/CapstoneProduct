import 'package:adet/bdrrmView/mainDashboard.dart';
import 'package:adet/bdrrmView/sidebarNav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Proceduresep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove the shadow
      ),
      drawer: NavBar(), // Add the sidebar navigation here
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/icons/mainbg.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 30, // Adjusted top value to move the image upward
            left: 90, // Adjusted left value for better positioning
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/icons/twologo.png',
                  width: 250, // Increased width
                  height: 155, // Increased height
                ),
                SizedBox(width: 10), // Adjust spacing if necessary
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10,
                      top: 20), // Adjust the left and top padding for text
                  child: TextSection(
                    title: 'Emergency Procedures',
                    subTitle: 'San Fernando, Camarines Sur, Barangay Bonifacio',
                  ),
                ),
              ],
            ),
          ),

          // Add Emergency Kit section
          Positioned(
            top: 190,
            left: 100,
            child: Container(
              width: 470,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xFF1C96C5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emergency Kit',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      width: 450,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter text here',
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.5)),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        style: TextStyle(
                            color: Colors.black), // Change text color to black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Add Emergency Plan section
          Positioned(
            top: 460,
            left: 100,
            child: Container(
              width: 470,
              height: 320,
              decoration: BoxDecoration(
                color: Color(0xFF1C96C5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emergency Plan',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      width: 450,
                      height: 260,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter text here',
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.5)),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        style: TextStyle(
                            color: Colors.black), // Change text color to black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Add Emergency Execution section
          Positioned(
            top: 190,
            left: 590,
            child: Container(
              width: 470,
              height: 310,
              decoration: BoxDecoration(
                color: Color(0xFF1C96C5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emergency Execution',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      width: 450,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter text here',
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.5)),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        style: TextStyle(
                            color: Colors.black), // Change text color to black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Add Emergency Contacts section
          Positioned(
            top: 520,
            left: 590,
            child: Container(
              width: 470,
              height: 260,
              decoration: BoxDecoration(
                color: Color(0xFF1C96C5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emergency Contacts',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      width: 450,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter text here',
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.5)),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        style: TextStyle(
                            color: Colors.black), // Change text color to black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Evecuation Center
          Positioned(
            top: 190,
            left: 1080,
            child: Container(
              width: 410,
              height: 510,
              decoration: BoxDecoration(
                color: Color(0xFF1C96C5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Evacuation Center',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      width: 390,
                      height: 450,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Add Publish button
          Positioned(
            bottom: 40,
            right: 115,
            child: ElevatedButton.icon(
              onPressed: () {
                // Show a SnackBar with success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Emergency Procedures successfully posted!'),
                    duration:
                        Duration(seconds: 3), // Adjust the duration as needed
                  ),
                );
                // Delay navigation to MainDashboard
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainDashboard()),
                  );
                });
              },
              icon: Icon(Icons.publish),
              label: Text('Publish'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xFF1C96C5),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(
                  color: Color(0xFF1C96C5),
                ),
                minimumSize: Size(140, 60), // Adjust the size of the button
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String title;
  final String subTitle;

  const TextSection({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10), // Spacing between the title and subtitle
            Text(
              subTitle,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF1C96C5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Proceduresep(),
  ));
}
