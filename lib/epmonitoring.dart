// epmonitoring.dart
import 'package:flutter/material.dart';

class EpMonitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EP Monitoring'),
      ),
      body: Center(
        child: Text(
          'EP Monitoring Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
