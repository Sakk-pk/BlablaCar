import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/ui/screens/ride_pref/ride_pref_screen.dart';
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RidePrefsScreen()
          ]
        ),
      ),
    );
  }
}
