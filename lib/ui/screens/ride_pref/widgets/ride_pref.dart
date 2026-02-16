import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/ui/screens/ride_pref/widgets/ride_input.dart';
import 'package:week_3_blabla_project/ui/widgets/actions/bla_button.dart';
import 'package:week_3_blabla_project/ui/widgets/display/bla_divider.dart';

class BlaForm extends StatefulWidget {
  const BlaForm({super.key});

  @override
  State<BlaForm> createState() => _BlaFormState();
}

class _BlaFormState extends State<BlaForm> {
  String fromLocation = "Phnom Penh";
  String toLocation = "Siem Reap";
  String date = "Select date";
  String seat = "1";

  void onSubmit() {
    // Add your submit logic here
  }

  /// Switch logic
  void _switchLocations() {
    setState(() {
      final temp = fromLocation;
      fromLocation = toLocation;
      toLocation = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16), // Inner padding
        decoration: BoxDecoration(
          color: Colors.white, // Solid background color
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// FROM
            RidePrefInput(
              title: fromLocation,
              onPressed: () {},
              leftIcon: Icons.circle_outlined,
              rightIcon: Icons.swap_vert,
              onRightIconPressed: _switchLocations,
            ),

            const BlaDivider(),

            /// TO
            RidePrefInput(
              title: toLocation,
              onPressed: () {},
              leftIcon: Icons.location_on_outlined,
            ),

            const BlaDivider(),

            /// DATE
            RidePrefInput(
              title: date,
              onPressed: () {},
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
