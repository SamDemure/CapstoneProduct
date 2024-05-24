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
        children: [
          Image.asset(
            'lib/icons/mainbg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 160,
            right: 150, // Adjust the position to the right side of the screen
            child: Container(
              width: 750,
              height: 540,
              decoration: BoxDecoration(
                color: Color(0xFF1C96C5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      'Emergency Assistance Request',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 20,
                    child: Container(
                      width: 710,
                      height: 460,
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
          Positioned(
            top: 10,
            left: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'lib/icons/twologo.png',
                      width: 250,
                      height: 155,
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: TextSection(
                        title: 'Evacuation Process Monitoring',
                        subTitle: 'San Fernando, Camarines Sur, Barangay Bonifacio',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                //first set of squares
                Positioned(
                  top: 0, // Adjust the top position of the first set of squares
                  child: Stack(
                    children: [
                      Container(
                        width: 580,
                        height: 450,
                        decoration: BoxDecoration(
                          color: Color(0xFF1C96C5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Text(
                                'Barangay Bonifacio Evacuation Status',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 70, // Adjusted the top position of the first square
                        left: 15, // Adjusted the left position of the first square
                        child: Container(
                          width: 550,
                          height: 380,
                          decoration: BoxDecoration(
                            color: Color(0xFFCFECF7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
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
    return Column(
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EpMonitoring(),
  ));
}
