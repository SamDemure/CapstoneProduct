import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'epmonitoring.dart';

class NavBar extends StatelessWidget {
  // Define text constants
  static const String homeText = 'Home';
  static const String preparednessText = 'Preparedness';
  static const String evacuationPlanningText = 'Evacuation Planning';
  static const String responseText = 'Response: RO';
  static const String profilingText = 'Profiling';
  static const String preevacalertText = 'Pre-Evacuation Alert';
  static const String announcementsText = 'Announcement';
  static const String responseoneText = 'Response: Report';
  static const String mdrrmofficialsText = 'MDRRM: Officials'; 
  static const String bdrrmofficialsText = 'BDRRM: Officials'; 
  static const String officesText = 'Offices'; 

  static const String dashboardText = 'DASHBOARD';
  static const String assessmentText = 'ASSESSMENT';
  static const String composeText = 'COMPOSE';
  static const String aboutusText = 'ABOUT US';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Jayla Sophia Romero',
              style: GoogleFonts.inter(), // Applying Inter font
            ),
            accountEmail: Text(
              'Zone 7 Bonifacio Resident',
              style: GoogleFonts.inter(), // Applying Inter font
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'icons/jellaypic.jpg', // Adjust path as needed
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('icons/covernoOPone.png'), // Adjust path as needed
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'icons/home.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(homeText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          // Section title for DASHBOARD
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              dashboardText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58), // Adjust color as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Dashboard options
          ListTile(
            leading: Image.asset(
              'icons/preparedness.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(preparednessText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          // Evacuation Planning dropdown
          ExpansionTile(
            leading: Image.asset(
              'icons/evacplanning.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(evacuationPlanningText, style: GoogleFonts.inter()), // Applying Inter font
            children: <Widget>[
              ListTile(
                title: Text('Evacuation Monitoring Process', style: GoogleFonts.inter()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EpMonitoring()), // Assuming EpMonitoring is your screen to redirect
                  );
                },
              ),
              ListTile(
                title: Text('Emergency Procedures', style: GoogleFonts.inter()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProceduresEP()), // Updated reference to ProceduresEP
                  );
                },
              ),
              ListTile(
                title: Text('Response Status', style: GoogleFonts.inter()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainDashboard()), // Updated reference to MainDashboard
                  );
                },
              ),
            ],
          ),
          ListTile(
            leading: Image.asset(
              'icons/response.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(responseText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          // Section title for ASSESSMENT
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              assessmentText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58), // Adjust color as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'icons/profiling.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(profilingText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          // Section title for COMPOSE
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              composeText, // Use constant for title
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58), // Adjust color as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'icons/preevacalert.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(preevacalertText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'icons/announcements.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(announcementsText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'icons/responseone.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(responseoneText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          // Section title for ABOUT US
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              aboutusText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58), // Adjust color as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'icons/officials.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(mdrrmofficialsText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'icons/officials.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(bdrrmofficialsText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'icons/offices.png', // Adjust path as needed
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(officesText, style: GoogleFonts.inter()), // Applying Inter font
            onTap: () => null,
          ),
          // Add other ListTiles here for navigation
        ],
      ),
    );
  }
}
