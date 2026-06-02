import 'package:flutter/material.dart';

class SeverityBadge extends StatelessWidget {
  final int severity;
  const SeverityBadge({super.key, required this.severity});

  Color get _color {
    if (severity >= 9) return const Color(0xFFD32F2F);
    if (severity >= 7) return const Color(0xFFF57C00);
    return const Color(0xFF388E3C);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40, height: 40,
      decoration: BoxDecoration(color: _color, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Text('$severity',
          style: const TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}
