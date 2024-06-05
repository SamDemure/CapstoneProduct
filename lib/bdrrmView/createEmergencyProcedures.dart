import 'package:adet/bdrrmView/mainDashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sidebarNav.dart'; // Importing sidebarNav.dart

class CreateEmergencyProcedures extends StatefulWidget {
  @override
  _CreateEmergencyProceduresState createState() =>
      _CreateEmergencyProceduresState();
}

class _CreateEmergencyProceduresState extends State<CreateEmergencyProcedures> {
  Map<String, String> notificationContent = {
    'Notification Content Preview': '',
    '----------------------------': '',
    '   Source': '',
    '   Flood Severity Level': '',
    '   Zone Number': '',
  };

  void updateNotificationContent(Map<String, String> content) {
    setState(() {
      notificationContent = content;
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
      drawer: NavBar(), // Add the sidebar navigation here
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/icons/mainbg.png', // Path to your background image
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 70, // Adjusted width for spacing
                    ),
                    Image.asset(
                      'lib/icons/twologo.png', // Path to your logo image
                      width: 250,
                      height: 155,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextSection(
                              title: 'Alert Residents!',
                              subTitle:
                                  'San Fernando, Camarines Sur, Barangay Bonifacio',
                            ),
                            SizedBox(height: 20), // Adjusted height for spacing
                            Center(
                              child: Text(
                                'Create New Pre-Evacuation Alert', // New Text
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                textAlign: TextAlign.center, // Center align
                              ),
                            ),
                            SizedBox(height: 10), // Adjusted height for spacing
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SizedBox(
                                  width: 410, // Adjusted width for the square
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      NotificationSquare(
                                          content: notificationContent),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextDropdownFormField(
                                            label: 'Source',
                                            options: ['River', 'PAGASA'],
                                            width: 200, // Adjusted width
                                            onChanged: (value) {
                                              final Map<String, String>
                                                  updatedContent =
                                                  Map.from(notificationContent);
                                              updatedContent['   Source'] =
                                                  value ?? '';
                                              updateNotificationContent(
                                                  updatedContent);
                                            },
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                          'Alert successfully sent!'),
                                                      duration: Duration(
                                                          seconds:
                                                              2), // Adjust duration as needed
                                                    ),
                                                  );
                                                  // Redirect to MainDashboard after a delay
                                                  Future.delayed(
                                                      Duration(seconds: 2), () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MainDashboard()),
                                                    );
                                                  });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  minimumSize: Size(
                                                      120, 60), // Adjusted size
                                                  foregroundColor:
                                                      Color(0xFF1C96C5),
                                                  backgroundColor: Colors.white,
                                                  side: BorderSide(
                                                    color: Color(
                                                        0xFF1C96C5), // Border color
                                                  ),
                                                ),
                                                child: Text(
                                                  'Save Alert',
                                                  style: TextStyle(
                                                    color: Color(0xFF1C96C5),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height:
                                                      20), // Adjusted height for spacing
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context); // Navigate back to the previous screen
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  minimumSize: Size(
                                                      120, 60), // Adjusted size
                                                  foregroundColor:
                                                      Color(0xFF1C96C5),
                                                  backgroundColor: Colors.white,
                                                  side: BorderSide(
                                                    color: Color(
                                                        0xFF1C96C5), // Border color
                                                  ),
                                                ),
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                    color: Color(0xFF1C96C5),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      TextDropdownFormField(
                                        label: 'Flood Severity Level',
                                        options: ['Alarming', 'Critical'],
                                        width: 200, // Adjusted width
                                        onChanged: (value) {
                                          final Map<String, String>
                                              updatedContent =
                                              Map.from(notificationContent);
                                          updatedContent[
                                                  '   Flood Severity Level'] =
                                              value ?? '';
                                          updateNotificationContent(
                                              updatedContent);
                                        },
                                      ),
                                      SizedBox(height: 20),
                                      TextDropdownFormField(
                                        label: 'Zone Number',
                                        options: List.generate(7,
                                            (index) => (index + 1).toString()),
                                        width: 200, // Adjusted width
                                        onChanged: (value) {
                                          final Map<String, String>
                                              updatedContent =
                                              Map.from(notificationContent);
                                          updatedContent['   Zone Number'] =
                                              value ?? '';
                                          updateNotificationContent(
                                              updatedContent);
                                        },
                                      ),
                                      SizedBox(height: 40), // Added here
                                    ],
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
        SizedBox(height: 10),
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
    );
  }
}

class NotificationSquare extends StatelessWidget {
  final Map<String, String> content;

  const NotificationSquare({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF20A7DB), // Blue color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content.entries.map(
            (entry) {
              if (entry.key == 'Notification Content Preview' ||
                  entry.key == '----------------------------') {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Center(
                    child: Text(
                      '${entry.key}',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    '${entry.key}${entry.value.isNotEmpty ? ': ${entry.value}' : ''}',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }
            },
          ).toList(),
        ),
      ),
    );
  }
}

class TextDropdownFormField extends StatelessWidget {
  final String label;
  final List<String> options;
  final double width;
  final ValueChanged<String?>? onChanged;

  const TextDropdownFormField({
    Key? key,
    required this.label,
    required this.options,
    this.width = 150, // Default width
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Adjusted width for the dropdown form field
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 18,
                color: Colors.black, // Changed color to black
                fontWeight: FontWeight.normal, // Changed font weight to normal
              ),
            ),
          ),
          SizedBox(height: 8),
          DropdownButtonFormField<String>(
            icon:
                Icon(Icons.arrow_drop_down), // Added chevron icon directly here
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
            value: null,
            onChanged: onChanged,
            items: options.map((option) {
              return DropdownMenuItem(
                value: option,
                child: SizedBox(
                  width: 150, // Adjust the width as needed
                  child: Text(
                    option,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14), // Adjusted font size
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CreateEmergencyProcedures(),
  ));
}
