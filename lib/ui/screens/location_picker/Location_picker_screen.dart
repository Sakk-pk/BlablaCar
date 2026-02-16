import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/model/ride/locations.dart';
import 'package:week_3_blabla_project/services/location_service.dart';
import 'package:week_3_blabla_project/ui/screens/location_picker/widgets/Location_tile.dart';

class LocationPickerScreen extends StatefulWidget {
  const LocationPickerScreen({super.key});

  @override
  State<LocationPickerScreen> createState() => _LocationPickerScreenState();
}

class _LocationPickerScreenState extends State<LocationPickerScreen> {
  final TextEditingController _controller = TextEditingController();
  late List<Location> filteredLocations;

  @override
  void initState() {
    super.initState();
    filteredLocations = LocationsService.getAllLocations();
  }

  void _searchLocation(String query) {
    setState(() {
      filteredLocations = LocationsService.searchLocations(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              onChanged: _searchLocation,
              decoration: InputDecoration(
                hintText: "Search city or country...",
                prefixIcon: const Icon(Icons.arrow_back),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: filteredLocations.length,
                itemBuilder: (context, index) {
                  final location = filteredLocations[index];
                  return LocationTile(
                    city: location.name,
                    country: location.country.name,
                    onSelected: () {
                      Navigator.pop(
                          context, location.name); 
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
