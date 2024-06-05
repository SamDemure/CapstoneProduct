class Monitoring {
  final int id;
  final String name;
  final String zoneNumber;
  final String ttdd;
  final String status; // Ensure status is defined

  Monitoring({
    required this.id,
    required this.name,
    required this.zoneNumber,
    required this.ttdd,
    required this.status,
  });

  factory Monitoring.fromJson(Map<String, dynamic> json) => Monitoring(
        id: json['id'],
        name: json['name'],
        zoneNumber: json['zoneNumber'],
        ttdd: json['ttdd'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'zoneNumber': zoneNumber,
        'ttdd': ttdd,
        'status': status,
      };
}

class EvacuationStatus {
  final int id;
  final String status;
  final String dateTime;

  EvacuationStatus({
    required this.id,
    required this.status,
    required this.dateTime,
  });

  factory EvacuationStatus.fromJson(Map<String, dynamic> json) => EvacuationStatus(
        id: json['id'],
        status: json['status'],
        dateTime: json['dateTime'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'status': status,
        'dateTime': dateTime,
      };
}

class EmergencyAssistance {
  final int id;
  final String name;
  final String zoneNumber;

  EmergencyAssistance({
    required this.id,
    required this.name,
    required this.zoneNumber,
  });

  factory EmergencyAssistance.fromJson(Map<String, dynamic> json) => EmergencyAssistance(
        id: json['id'],
        name: json['name'],
        zoneNumber: json['zoneNumber'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'zoneNumber': zoneNumber,
      };
}
