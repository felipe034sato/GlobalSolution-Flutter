import 'package:flutter/material.dart';
import '../data/mock/mock_events.dart';
import '../widgets/severity_badge.dart';

class RiskMapScreen extends StatelessWidget {
  const RiskMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final critical = MockEvents.list.where((e) => e.severity >= 8).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Mapa de Risco')),
      body: Column(children: [
        Container(
          height: 180,
          color: const Color(0xFFE3F2FD),
          child: const Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.map, size: 64, color: Color(0xFF0D47A1)),
              SizedBox(height: 8),
              Text('Integrar Google Maps / OpenStreetMap',
                  style: TextStyle(color: Color(0xFF0D47A1))),
            ]))),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text('Eventos Críticos (Severidade ≥ 8)',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold))),
        Expanded(
          child: ListView.builder(
            itemCount: critical.length,
            itemBuilder: (_, i) => ListTile(
              leading: SeverityBadge(severity: critical[i].severity),
              title: Text(critical[i].name),
              subtitle: Text('${critical[i].region} — ${critical[i].status}')))),
      ]),
    );
  }
}
