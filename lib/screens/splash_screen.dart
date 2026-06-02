import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(Icons.satellite_alt, size: 96, color: Colors.white),
          const SizedBox(height: 24),
          const Text('OrbitalWatch',
              style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Monitoramento ambiental via satélite',
              style: TextStyle(color: Colors.white70, fontSize: 14)),
          const SizedBox(height: 40),
          const CircularProgressIndicator(color: Colors.white),
        ]),
      ),
    );
  }
}
