import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/ui/theme/theme.dart';

class LocationTile extends StatelessWidget {
  const LocationTile({
    super.key,
    required this.city,
    required this.country,
    required this.onSelected,
  });

  final String city;
  final String country;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onSelected, 
      leading: const Icon(Icons.history),
      title: Text(city, style: BlaTextStyles.body),
      subtitle: Text(
        country,
        style: BlaTextStyles.label.copyWith(
          color: BlaColors.textLight,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    );
  }
}
