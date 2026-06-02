import 'package:flutter/material.dart';
import '../data/mock/mock_events.dart';
import '../widgets/event_card.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({super.key});
  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  String _filter = 'TODOS';
  final _filters = ['TODOS', 'QUEIMADA', 'INUNDACAO', 'SECA', 'TEMPESTADE', 'DESMATAMENTO'];

  @override
  Widget build(BuildContext context) {
    final events = _filter == 'TODOS'
        ? MockEvents.list
        : MockEvents.list.where((e) => e.type == _filter).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Eventos Satelitais')),
      body: Column(children: [
        SizedBox(
          height: 56,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            children: _filters.map((f) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ChoiceChip(
                label: Text(f),
                selected: _filter == f,
                onSelected: (_) => setState(() => _filter = f)),
            )).toList()),
        ),
        Expanded(
          child: events.isEmpty
              ? const Center(child: Text('Nenhum evento encontrado'))
              : ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (ctx, i) => EventCard(
                    event: events[i],
                    onTap: () => Navigator.pushNamed(ctx, '/event/${events[i].id}'))),
        ),
      ]),
    );
  }
}
