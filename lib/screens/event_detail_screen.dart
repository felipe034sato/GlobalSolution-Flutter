import 'package:flutter/material.dart';
import '../data/mock/mock_events.dart';

class EventDetailScreen extends StatelessWidget {
  final int eventId;
  const EventDetailScreen({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    final event = MockEvents.list.where((e) => e.id == eventId).firstOrNull;
    if (event == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Evento')),
        body: const Center(child: Text('Evento não encontrado')));
    }
    return Scaffold(
      appBar: AppBar(title: Text(event.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Card(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              _row('Tipo',         event.type),
              _row('Severidade',   '${event.severity}/10'),
              _row('Impacto Est.', '${event.estimatedImpact}'),
              _row('Região',       event.region),
              _row('Continente',   event.continent),
              _row('Satélite',     event.satellite),
              _row('Data',         event.observationDate),
              _row('Status',       event.status),
            ]))),
          const SizedBox(height: 16),
          Text('Descrição', style: Theme.of(context).textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(event.description),
        ]),
      ),
    );
  }

  Widget _row(String label, String value) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ]));
}
