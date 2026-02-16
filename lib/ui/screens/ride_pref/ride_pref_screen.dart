import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/ui/screens/ride_pref/widgets/ride_pref.dart'; // Adjust path as needed

class RidePrefScreen extends StatelessWidget {
  const RidePrefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const BlaForm(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
