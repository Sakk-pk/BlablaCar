import 'package:week_3_blabla_project/data/dummy_data.dart';
import '../model/ride/locations.dart';

class LocationsService {
  /// Returns all locations
  static List<Location> getAllLocations() {
    return fakeLocations;
  }

  /// Search locations by city or country
  static List<Location> searchLocations(String query) {
    return fakeLocations.where((location) {
      return location.name.toLowerCase().contains(query.toLowerCase()) ||
          location.country.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
