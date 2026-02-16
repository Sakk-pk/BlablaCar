import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:week_3_blabla_project/ui/screens/location_picker/location_picker_screen.dart';
import 'package:week_3_blabla_project/ui/screens/ride_pref/widgets/ride_input.dart';
import 'package:week_3_blabla_project/ui/widgets/actions/bla_button.dart';
import 'package:week_3_blabla_project/ui/widgets/display/bla_divider.dart';

class BlaForm extends StatefulWidget {
  const BlaForm({super.key});

  @override
  State<BlaForm> createState() => _BlaFormState();
}

class _BlaFormState extends State<BlaForm> {
  String fromLocation = "From";
  String toLocation = "To";
  String date = "Select date";
  String seat = "1";

  void onSubmit() {
   
  }

  /// Switch logic
  void _switchLocations() {
    setState(() {
      final temp = fromLocation;
      fromLocation = toLocation;
      toLocation = temp;
    });
  }

  /// Open Location Picker and return selected city
  Future<void> _selectLocation(bool isDeparture) async {
    final selectedLocation = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (_) => const LocationPickerScreen(),
      ),
    );

    if (selectedLocation != null) {
      setState(() {
        if (isDeparture) {
          fromLocation = selectedLocation;
        } else {
          toLocation = selectedLocation;
        }
      });
    }
  }

  Future<void> _selectDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now, 
      lastDate: DateTime(now.year + 2),
    );

    if (picked != null) {
      setState(() {
        date = DateFormat('EEE, d MMM').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// FROM
            RidePrefInput(
              title: fromLocation,
              onPressed: () => _selectLocation(true),
              leftIcon: Icons.circle_outlined,
              rightIcon: Icons.swap_vert,
              onRightIconPressed: _switchLocations,
            ),

            const BlaDivider(),

            /// TO
            RidePrefInput(
              title: toLocation,
              onPressed: () => _selectLocation(false),
              leftIcon: Icons.location_on_outlined,
            ),

            const BlaDivider(),

            /// DATE
            RidePrefInput(
              title: date,
              onPressed: _selectDate,
              leftIcon: Icons.calendar_month_outlined,
            ),

            const BlaDivider(),

            /// SEAT
            RidePrefInput(
              title: seat,
              onPressed: () {},
              leftIcon: Icons.person,
            ),

            const SizedBox(height: 16),

            /// SEARCH BUTTON
            BlaButton(text: 'Search', onPressed: onSubmit),
          ],
        ),
      ),
    );
  }
}
