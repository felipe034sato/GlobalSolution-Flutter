import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _alerts = true;
  bool _email  = false;
  double _minSev = 7;
  String _type = 'TODOS';
  bool _saved  = false;
  final _types = ['TODOS', 'QUEIMADA', 'INUNDACAO', 'SECA', 'TEMPESTADE'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações de Alerta')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        SwitchListTile(
          title: const Text('Notificações ativas'),
          subtitle: const Text('Receber alertas de eventos'),
          value: _alerts,
          onChanged: (v) => setState(() { _alerts = v; _saved = false; })),
        SwitchListTile(
          title: const Text('Alertas por e-mail'),
          subtitle: const Text('Enviar cópia para e-mail cadastrado'),
          value: _email,
          onChanged: (v) => setState(() { _email = v; _saved = false; })),
        const Divider(),
        ListTile(
          title: Text('Severidade mínima: ${_minSev.toInt()}'),
          subtitle: Slider(
            value: _minSev, min: 1, max: 10, divisions: 9,
            label: _minSev.toInt().toString(),
            onChanged: (v) => setState(() { _minSev = v; _saved = false; }))),
        const Divider(),
        ListTile(
          title: const Text('Filtrar por tipo de evento'),
          trailing: DropdownButton<String>(
            value: _type,
            items: _types.map((t) => DropdownMenuItem(value: t, child: Text(t))).toList(),
            onChanged: (v) => setState(() { _type = v!; _saved = false; }))),
        const SizedBox(height: 24),
        ElevatedButton.icon(
          icon: const Icon(Icons.save),
          label: const Text('Salvar Configurações'),
          onPressed: () => setState(() => _saved = true)),
        if (_saved) ...[
          const SizedBox(height: 12),
          const Card(
            color: Color(0xFFE8F5E9),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text('Configurações salvas com sucesso!'),
              ]))),
        ],
      ]),
    );
  }
}
