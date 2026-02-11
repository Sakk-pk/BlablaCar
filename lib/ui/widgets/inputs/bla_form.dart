import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/model/ride/ride.dart';
import 'package:week_3_blabla_project/model/ride_pref/ride_pref.dart';
import 'package:week_3_blabla_project/ui/widgets/actions/bla_button.dart';
import 'package:week_3_blabla_project/ui/widgets/display/bla_divider.dart';

class BlaForm extends StatelessWidget {
  final RidePref departure;
  final RidePref arrival;
  final RidePref departureDate;
  final RidePref requestedSeats;
  const BlaForm({super.key, required this.departure, required this.arrival, required this.departureDate, required this.requestedSeats});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildRow(Icons.circle, 'From'),
            BlaDivider(),
            _buildRow(Icons.circle, 'To'),
            BlaDivider(),
            _buildRow(Icons.calendar_today, 'Sat 22 Feb'),
            BlaDivider(),
            _buildRow(Icons.person, '1'),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: BlaButton(
                text: 'Search',
                icon: Icons.search,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                iconColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.blue),
          const SizedBox(width: 12),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
