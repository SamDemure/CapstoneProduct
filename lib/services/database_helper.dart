import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:adet/models/epMonModel.dart'; // Assuming these classes are defined in this file

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "Monitoring.db";

  static Future<Database> _getDB() async {
    return openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async {
        // the first table
        await db.execute(
            "CREATE TABLE EvacuationStatus(id INTEGER PRIMARY KEY, name TEXT NOT NULL, dateTime TEXT NOT NULL);");
        // the second table
        await db.execute(
            "CREATE TABLE EmergencyAssistance(id INTEGER PRIMARY KEY, name TEXT NOT NULL, zoneNumber TEXT NOT NULL);");
      },
      version: _version,
    );
  }

  // Functions to interact with the EvacuationStatus table
  static Future<int> addEvacuationStatus(EvacuationStatus evacuationStatus) async {
    final db = await _getDB();
    return await db.insert("EvacuationStatus", evacuationStatus.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<EvacuationStatus>> getAllEvacuationStatus() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query("EvacuationStatus");

    return List.generate(maps.length, (index) => EvacuationStatus.fromJson(maps[index]));
  }

  // Functions to interact with the EmergencyAssistance table
  static Future<int> addEmergencyAssistance(EmergencyAssistance emergencyAssistance) async {
    final db = await _getDB();
    return await db.insert("EmergencyAssistance", emergencyAssistance.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<EmergencyAssistance>> getAllEmergencyAssistance() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query("EmergencyAssistance");

    return List.generate(maps.length, (index) => EmergencyAssistance.fromJson(maps[index]));
  }
}
