import 'package:flutter/material.dart';

class EpMonitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove the shadow
        leading: IconButton(
          icon: Icon(Icons.menu), // Add the menu icon
          onPressed: () {
            // Add functionality for the menu icon
          },
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
            top: 10,
            left: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogoSection(
                  imagePath: 'lib/icons/bdrrmlogo.png',
                ),
                SizedBox(width: 5), // Add spacing between the logos and text
                LogoSection(
                  imagePath: 'lib/icons/bonifaciologo.png',
                ),
                SizedBox(width: 5), // Add spacing between the logos and text
                Padding(
                  padding: const EdgeInsets.only(top: 60), // Adjust the top padding
                  child: TextSection(
                    title: 'Welcome To Response, Admin!',
                    subTitle: 'San fernando, Camarines Sur, Barangay Bonifacio.',
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

class LogoSection extends StatelessWidget {
  final String imagePath;

  const LogoSection({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 150,
          height: 200,
        ),
      ],
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
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1), // Add spacing between the title and subtitle
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
