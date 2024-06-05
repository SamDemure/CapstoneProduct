import 'package:adet/bdrrmView/sidebarNav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDashboard extends StatelessWidget {
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
                    title: 'RESPONSE: Evacuation Planning',
                    subTitle: 'San Fernando, Camarines Sur, Barangay Bonifacio',
                  ),
                ),
              ],
            ),
          ),

          //Current Alert Status
          Positioned(
            top: 190,
            left: 100,
            child: Container(
              width: 470,
              height: 200,
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
                          'Current Alert Status',
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
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Align text vertically center
                        children: [
                          // No. of Today's Alert
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 5), // Adjusted top padding
                              child: Text(
                                "No. of Today's Alert",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          // Divider
                          Container(
                            width: 1,
                            height: 100,
                            color: Colors.black,
                          ),
                          // Severity Level
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 5, top: 10), // Adjusted top padding
                              child: Text(
                                'Severity Level',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

// Evacuation Center Availability
Positioned(
  top: 400,
  left: 100,
  child: Container(
    width: 470,
    height: 220,
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
                'Evacuation Center Availability',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10), // Add some spacing
              Center(
                child: Text(
                  'Is the Evacuation Center of Barangay Bonifacio available?',
                  style: TextStyle(
                    color: Colors.black, // Changed text color to black for contrast
                    fontSize: 16,
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
            height: 160,
            decoration: BoxDecoration(
              color: Color(0xFFCFECF7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Check Icon Button
                ElevatedButton.icon(
                  onPressed: () {
                    // Add functionality for the check button
                  },
                  icon: Icon(Icons.check),
                  label: SizedBox.shrink(), // Hide the label
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF20A7DB)), // Adjust button color as needed
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                // Divider
                Container(
                  width: 1,
                  height: 60, // Adjust divider height as needed
                  color: Colors.black,
                ),
                // X Button
                ElevatedButton.icon(
                  onPressed: () {
                    // Add functionality for the X button
                  },
                  icon: Icon(Icons.clear),
                  label: SizedBox.shrink(), // Hide the label
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white), // Adjust button color as needed
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
),



          //NAME OF SYSTEM
          Positioned(
            top: 630,
            left: 100,
            child: Container(
              width: 470,
              height: 120,
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
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      width: 450,
                      height: 90,
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

          //Residents Acknowledgement Percentage
          Positioned(
            top: 190,
            left: 590,
            child: Container(
              width: 470,
              height: 180,
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
                          'Residents Acknowledgement Percentage',
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
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Align text vertically center
                        children: [
                          // No. of Today's Alert
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 5), // Adjusted top padding
                              child: Text(
                                "Acknowledged",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          // Divider
                          Container(
                            width: 1,
                            height: 100,
                            color: Colors.black,
                          ),
                          // Severity Level
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 5, top: 10), // Adjusted top padding
                              child: Text(
                                'Did not Acknowledged',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Recent Alert
          Positioned(
            top: 380,
            left: 590,
            child: Container(
              width: 470,
              height: 200,
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
                          'Recent Alert',
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
                      height: 140,
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

          //Barangay
          Positioned(
            top: 590,
            left: 590,
            child: Container(
              width: 470,
              height: 160,
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
                          'Barangay',
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
                      height: 100,
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

          //Person In Charge
          Positioned(
            top: 190,
            left: 1080,
            child: Container(
              width: 470,
              height: 160,
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
                          'BDRRM In Charge',
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
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFECF7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          // Profile Picture
                          Padding(
                            padding: const EdgeInsets.all(
                                20.0), // Adjust padding as needed
                            child: Container(
                              width:
                                  60, // Adjust width to make the circle bigger
                              height:
                                  60, // Adjust height to make the circle bigger
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors
                                    .white, // Add desired background color
                              ),
                              child: CircleAvatar(
                                radius: 30, // Keep the radius as desired size
                                backgroundImage:
                                    AssetImage('lib/icons/profile.jpg'),
                              ),
                            ),
                          ),
                          // Text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Jayla Sophia',
                                style: GoogleFonts.inter(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Romero',
                                style: GoogleFonts.inter(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          // Placeholder Container
                          Expanded(
                            child: Container(
                                // Add other widgets or content here
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Live Weather Forecast
          Positioned(
            top: 360,
            left: 1080,
            child: Container(
              width: 470,
              height: 390,
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
                          'Live Weather Forecast',
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
                      height: 330,
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
    home: MainDashboard(),
  ));
}
