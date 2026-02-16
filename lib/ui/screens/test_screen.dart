import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/model/ride_pref/ride_pref.dart';
import 'package:week_3_blabla_project/model/ride/locations.dart'; // Location & Country
import 'package:week_3_blabla_project/ui/screens/ride_pref/widgets/ride_pref_tile.dart';
import 'package:week_3_blabla_project/ui/screens/ride_pref/widgets/ride_pref.dart'; // BlaForm

const String testBackgroundImagePath = 'assets/images/blabla_home.png';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample RidePref instance
    final ridePref = RidePref(
      departure: Location(name: "Paris", country: Country.france),
      arrival: Location(name: "Lyon", country: Country.france),
      departureDate: DateTime(2026, 2, 20),
      requestedSeats: 2,
    );

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              testBackgroundImagePath,
              fit: BoxFit.cover,
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    "Test Screen",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Form
                  const BlaForm(),
                  const SizedBox(height: 20),

                  // Ride Pref Tile
                  RidePrefTile(
                    ridePref: ridePref,
                    onPressed: () {},
                  ),
                  RidePrefTile(
                    ridePref: ridePref,
                    onPressed: () {},
                  ),
                  RidePrefTile(
                    ridePref: ridePref,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
