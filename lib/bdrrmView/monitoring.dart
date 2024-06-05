import 'package:adet/bdrrmView/sidebarNav.dart';
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
  List<String> residents = [];
  bool isSidebarOpen = false;

  void updateStatus(String newStatus) {
    setState(() {
      status = newStatus;
      dateTime = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
    });
  }

  void addResident(String name) {
    setState(() {
      residents.add(name);
    });
  }

  void removeResidents() {
    setState(() {
      residents.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove the shadow
          ),
      drawer: NavBar(), // Add the side navigation drawer here
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/icons/mainbg.png',
              fit: BoxFit.cover,
            ),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: ListView.builder(
                              itemCount: residents.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(
                                    residents[index],
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: ElevatedButton(
                                onPressed: removeResidents,
                                child: Text(
                                  'Reset Residents',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(150, 40),
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Color(0xFF1C96C5)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
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
                        subTitle:
                            'San Fernando, Camarines Sur, Barangay Bonifacio',
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
                              ],
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 15,
                            child: Container(
                              width: 550,
                              height: 370,
                              decoration: BoxDecoration(
                                color: Color(0xFFCFECF7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  if (status != null)
                                    Center(
                                      child: Text(
                                        status!,
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (dateTime != null)
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Text(
                                        dateTime!,
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
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
                  ],
                ),
                SizedBox(height: 20),
                // Button section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 30),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add functionality for the back button
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      label: Text(''),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(60, 60),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => updateStatus('In Progress'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFF1C96C5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'In Progress',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF1C96C5),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => updateStatus('Done'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFF1C96C5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Done',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF1C96C5),
                            fontSize: 18,
                          ),
                        ),
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

  const TextSection({Key? key, required this.title, required this.subTitle})
      : super(key: key);

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
        SizedBox(height: 0),
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
