import 'package:flutter/material.dart';

class PreEvacAlertDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    child: Text(
                      'Pre Evacuation Alert Dashboard',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Compose Emergency Procedures',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8), // Add space between text and line
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              height: 1.0,
              color: Colors.black,
            ),
            SizedBox(height: 20), // Add space between line and rectangles
            // Row to contain all rectangles
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Red rectangle with text and vertical line
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  padding: EdgeInsets.all(8.0),
                  width: 500.0, // Adjusted width
                  height: 140.0, // Adjusted height
                  color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'No of Today’s Alert',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Data: 5', // Example data
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 1.0,
                            color: Colors.white,
                            height: 80.0, // Height of the vertical line
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                          ), // Vertical line
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Severity Level',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'High', // Example data
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8), // Adjust height as needed
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                color: Colors.black.withOpacity(0.25),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Current Alert Status',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20), // Space between rectangles
                // Blue rectangle with text and vertical line
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 500.0, // Adjusted width
                  height: 140.0, // Adjusted height
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Acknowledged',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Data: 81%', // Example data
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 1.0,
                            color: Colors.white,
                            height: 80.0, // Height of the vertical line
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                          ), // Vertical line
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Did not Acknowledge',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Data: 19%', // Example data
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8), // Adjust height as needed
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                color: Colors.black.withOpacity(0.25),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Residents Acknowledgement Percentage',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20), // Space between rectangles
                // Green rectangle with text and profile picture
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 300.0, // Adjusted width for the smaller rectangle
                  height: 140.0, // Adjusted height
                  color: Colors.green,
                  child: Column(
                    children: [
                      Text(
                        'Jayla Romero',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage(
                            'assets/profile.jpg'), // Replace with actual image asset
                      ),
                      SizedBox(height: 8), // Adjust height as needed
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                color: Colors.black.withOpacity(0.25),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Person In Charge Monitoring',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
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
            SizedBox(height: 20), // Space between row and large square
            // Row to contain the fourth, fifth, sixth, and seventh rectangles
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Fourth large square with text and button
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  padding: EdgeInsets.all(8.0),
                  width: 500.0, // Adjusted width
                  height: 320.0, // Adjusted height
                  color: Colors.lightBlue, // Color of the large square
                  child: Column(
                    children: [
                      // Adjusted the size of the rectangle behind the text
                      Container(
                        width: 530.0,
                        height: 40.0,
                        color: Colors.black.withOpacity(0.25),
                        child: Center(
                          child: Text(
                            'Evacuation Center Availability',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              16), // Space between the rectangle and the question
                      Column(
                        children: [
                          Text(
                            'Is the evacuation center of',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Barangay Bonifacio available?',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40), // Space between text and buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('✔'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red, // Background color
                            ),
                          ),
                          SizedBox(width: 20), // Space between buttons
                          Container(
                            width: 1.0,
                            color: Colors.white,
                            height: 70.0, // Height of the vertical line
                          ), // Vertical line
                          SizedBox(width: 20), // Space between line and button
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('✘'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, // Background color
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20), // Space between rectangles
                // Fifth and seventh rectangles stacked vertically
                Column(
                  children: [
                    // Fifth rectangle with recent alert text
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 500.0, // Adjusted width
                      height: 140.0, // Adjusted height
                      color: Colors.orange, // Color of the rectangle
                      child: Column(
                        children: [
                          // Rectangle behind the text
                          Container(
                            width: double.infinity,
                            height: 30.0,
                            color: Colors.black.withOpacity(0.25),
                            child: Center(
                              child: Text(
                                'Recent Alert',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16), // Space between rectangle and text
                          // Text and details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3. Alert Time: 2024-02-15 10:30 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '   Severity: High',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '   Affected Areas: Barangay Bonifacio',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // Space between fifth and seventh rectangles
                    // Seventh rectangle with BDRRM Officials text
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 500.0, // Adjusted width
                      height: 160.0, // Adjusted height
                      color: Colors.pink, // Color of the rectangle
                      child: Column(
                        children: [
                          // Rectangle behind
(
                            child: Container(
                              width: double.infinity,
                              height: 30.0,
                              color: Colors.black.withOpacity(0.25),
                              child: Center(
                                child: Text(
                                  'BDRRM Officials',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16), // Space between rectangle and text
                          // Text and details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3. Alert Time: 2024-02-15 10:30 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '   Severity: High',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '   Affected Areas: Barangay Bonifacio',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20), // Space between rectangles
                // Eighth vertical rectangle with images (logos)
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    width: 300.0, // Adjusted width
                    height: 440.0, // Adjusted height
                    color: Colors.purple, // Color of the rectangle
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 285,
                          height: 30.0,
                          color: Colors.black.withOpacity(0.25),
                          child: Center(
                            child: Text(
                              'BARANGAY BONIFACIO DISASTER RISK REDUCTION MANAGEMENT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16), // Space between text and content
                        // Images (logos)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/logo1.png',
                              width: 50, // Adjust as needed
                              height: 50, // Adjust as needed
                            ),
                            Image.asset(
                              'assets/logo2.png',
                              width: 50, // Adjust as needed
                              height: 50, // Adjust as needed
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PreEvacAlertDashboard(),
  ));
}