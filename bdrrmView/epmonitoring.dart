import 'package:adet/residentsView/sosbutton.dart'; // Adjust the import path as necessary
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class EpMonitoring extends StatefulWidget {
  @override
  _EpMonitoringState createState() => _EpMonitoringState();
}

class _EpMonitoringState extends State<EpMonitoring> {
  String? status;
  String? dateTime;

  void updateStatus(String newStatus) {
    setState(() {
      status = newStatus;
      dateTime = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 20.0),
          child: IconButton(
            icon: Icon(Icons.menu, size: 40.0),
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
            right: 150,
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
                // First set of squares
                Stack(
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Barangay Bonifacio Evacuation Status',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                if (status != null && dateTime != null)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      '$status\n$dateTime',
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
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
                        height: 370,
                        decoration: BoxDecoration(
                          color: Color(0xFFCFECF7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SOSButton(
                          holdDuration: Duration(seconds: 5),
                          onHoldComplete: (String message) {
                            setState(() {
                              status = message;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Button section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 30), // Add some space to push the buttons to the right
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add functionality for the back button
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      label: Text(''),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(60, 60), // Set height and width
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => updateStatus('In Progress'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 60), // Set width and height
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFF1C96C5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'In Progress',
                        style: TextStyle(color: Color(0xFF1C96C5)),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => updateStatus('Done'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 60), // Set width and height
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFF1C96C5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Done',
                        style: TextStyle(color: Color(0xFF1C96C5)),
                      ),
                    ),
                  ],
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

