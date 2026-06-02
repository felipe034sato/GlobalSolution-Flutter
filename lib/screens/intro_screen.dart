import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _ctrl = PageController();
  int _page = 0;

  final List<Map<String, dynamic>> _pages = [
    {'icon': Icons.satellite_alt, 'title': 'Tecnologia Espacial',
     'desc': 'Satélites monitoram o planeta 24h por dia, coletando dados ambientais com precisão milimétrica.'},
    {'icon': Icons.warning_amber_rounded, 'title': 'Alertas em Tempo Real',
     'desc': 'Receba alertas de queimadas, inundações, secas e tempestades antes que se agravem.'},
    {'icon': Icons.public, 'title': 'Impacto Global',
     'desc': 'Dados espaciais ajudam governos e organizações a tomar decisões que salvam vidas e protegem o planeta.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: PageView.builder(
              controller: _ctrl,
              itemCount: _pages.length,
              onPageChanged: (i) => setState(() => _page = i),
              itemBuilder: (_, i) => Padding(
                padding: const EdgeInsets.all(32),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(_pages[i]['icon'] as IconData, size: 96,
                       color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 24),
                  Text(_pages[i]['title'] as String,
                    style: Theme.of(context).textTheme.headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  Text(_pages[i]['desc'] as String,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center),
                ]),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pages.length, (i) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _page == i ? 24 : 8, height: 8,
                decoration: BoxDecoration(
                  color: _page == i ? Theme.of(context).colorScheme.primary : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(4)),
              ))),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              if (_page > 0)
                OutlinedButton(
                  onPressed: () => _ctrl.previousPage(
                      duration: const Duration(milliseconds: 300), curve: Curves.easeInOut),
                  child: const Text('Voltar'))
              else
                const SizedBox.shrink(),
              ElevatedButton(
                onPressed: () {
                  if (_page < _pages.length - 1) {
                    _ctrl.nextPage(
                        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                  } else {
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
                child: Text(_page < _pages.length - 1 ? 'Avançar' : 'Começar')),
            ]),
          ),
        ]),
      ),
    );
  }
}
