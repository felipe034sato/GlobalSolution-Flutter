import 'package:flutter/material.dart';
import '../data/models/satellite_event.dart';
import 'severity_badge.dart';

class EventCard extends StatelessWidget {
  final SatelliteEvent event;
  final VoidCallback onTap;
  const EventCard({super.key, required this.event, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 2,
      child: ListTile(
        leading: SeverityBadge(severity: event.severity),
        title: Text(event.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${event.region} • ${event.satellite}\n${event.observationDate}'),
        isThreeLine: true,
        trailing: Chip(
          label: Text(event.status, style: const TextStyle(fontSize: 10)),
          padding: EdgeInsets.zero),
        onTap: onTap,
      ),
    );
  }
}
