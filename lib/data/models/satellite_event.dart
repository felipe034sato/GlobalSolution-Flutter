class SatelliteEvent {
  final int id;
  final String name;
  final String type;
  final int severity;
  final String region;
  final String continent;
  final double estimatedImpact;
  final String observationDate;
  final String satellite;
  final String status;
  final String description;

  const SatelliteEvent({
    required this.id,
    required this.name,
    required this.type,
    required this.severity,
    required this.region,
    required this.continent,
    required this.estimatedImpact,
    required this.observationDate,
    required this.satellite,
    required this.status,
    required this.description,
  });
}
