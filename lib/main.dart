import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/intro_screen.dart';
import 'screens/home_screen.dart';
import 'screens/event_list_screen.dart';
import 'screens/event_detail_screen.dart';
import 'screens/risk_map_screen.dart';
import 'screens/settings_screen.dart';

void main() => runApp(const OrbitalWatchApp());

class OrbitalWatchApp extends StatelessWidget {
  const OrbitalWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OrbitalWatch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash':   (_) => const SplashScreen(),
        '/intro':    (_) => const IntroScreen(),
        '/home':     (_) => const HomeScreen(),
        '/events':   (_) => const EventListScreen(),
        '/map':      (_) => const RiskMapScreen(),
        '/settings': (_) => const SettingsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.startsWith('/event/')) {
          final id = int.parse(settings.name!.split('/').last);
          return MaterialPageRoute(builder: (_) => EventDetailScreen(eventId: id));
        }
        return null;
      },
    );
  }
}
