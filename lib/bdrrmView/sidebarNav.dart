import 'package:adet/bdrrmView/createEmergencyProcedures.dart';
import 'package:adet/bdrrmView/mainDashboard.dart';
import 'package:adet/bdrrmView/monitoring.dart';
import 'package:adet/bdrrmView/proceduresEP.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: NavBar(),
      );
}

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
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Jayla Sophia Romero',
              style: GoogleFonts.inter(),
            ),
            accountEmail: Text(
              'BDRRM Officer',
              style: GoogleFonts.inter(),
            ),
            currentAccountPicture: SizedBox(
              height: 120,
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'lib/icons/jellaypic.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('lib/icons/covernoOPone.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/home.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(homeText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              dashboardText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/preparedness.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(preparednessText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          ExpansionTile(
            leading: Image.asset(
              'lib/icons/evacplanning.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(evacuationPlanningText, style: GoogleFonts.inter()),
            children: <Widget>[
              ListTile(
                title: Text('Response Status', style: GoogleFonts.inter()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainDashboard(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Evacuation Process Monitoring', style: GoogleFonts.inter()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EpMonitoring(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Emergency Procedures', style: GoogleFonts.inter()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Proceduresep(),
                    ),
                  );
                },
              ),
              
            ],
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/response.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(responseText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              assessmentText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/profiling.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(profilingText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              composeText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/preevacalert.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(preevacalertText, style: GoogleFonts.inter()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateEmergencyProcedures(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/announcements.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(announcementsText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/responseone.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(responseoneText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              aboutusText,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF2C1C58),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/officials.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(mdrrmofficialsText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/officials.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(bdrrmofficialsText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'lib/icons/offices.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: Text(officesText, style: GoogleFonts.inter()),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
