import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EpMonitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove the shadow
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 20.0), // Adjust the left and top padding
          child: IconButton(
            icon: Icon(Icons.menu, size: 40.0), // Add the menu icon with a size of 30.0
            onPressed: () {
              // Add functionality for the menu icon
            },
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
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
                  padding: const EdgeInsets.only(left: 10, top: 20), // Adjust the left and top padding for text
                  child: TextSection(
                    title: 'Evacuation Process Monitoring',
                    subTitle: 'San Fernando, Camarines Sur, Barangay Bonifacio',
                  ),
                ),
              ],
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

  const TextSection({Key? key, required this.title, required this.subTitle}) : super(key: key);

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
            SizedBox(height: 0), // Spacing between the title and subtitle
            Text(
              subTitle,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
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
    home: EpMonitoring(),
  ));
}
