import 'package:adet/services/database_helper.dart'; // Adjust the import path based on your project structure

void printTableContents() async {
  final dbHelper = DatabaseHelper.instance;

  // Get all emergency assistance data from the database
  final emergencyAssistanceList = await dbHelper.getAllEmergencyAssistance();

  // Print the contents of the emergency assistance table
  print('Emergency Assistance Table Contents:');
  for (var emergencyAssistance in emergencyAssistanceList) {
    print('ID: ${emergencyAssistance.id}, Name: ${emergencyAssistance.name}');
  }

  // Get all evacuation status data from the database
  final evacuationStatusList = await dbHelper.getAllEvacuationStatus();

  // Print the contents of the evacuation status table
  print('Evacuation Status Table Contents:');
  for (var evacuationStatus in evacuationStatusList) {
print('ID: ${status?['id']}, Status: ${status?['status']}, DateTime: ${status?['dateTime']}');
  }
}
