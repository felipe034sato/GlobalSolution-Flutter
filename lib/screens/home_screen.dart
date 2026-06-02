// ── home_screen.dart ──
// Salvar em lib/screens/home_screen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrbitalWatch'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.satellite_alt, size: 80, color: Colors.white),
            const SizedBox(height: 16),
            Text(
              'OrbitalWatch',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Monitoramento ambiental via satélite em tempo real',
                textAlign: TextAlign.center),
            const SizedBox(height: 40),
            SizedBox(width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.list_alt),
                label: const Text('Ver Eventos Satelitais'),
                onPressed: () => Navigator.pushNamed(context, '/events'))),
            const SizedBox(height: 12),
            SizedBox(width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.map_outlined),
                label: const Text('Mapa de Risco'),
                onPressed: () => Navigator.pushNamed(context, '/map'))),
            const SizedBox(height: 12),
            SizedBox(width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.settings_outlined),
                label: const Text('Configurações de Alerta'),
                onPressed: () => Navigator.pushNamed(context, '/settings'))),
          ]),
        ),
      ),
    );
  }
}
