import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/model/ride_pref/ride_pref.dart';
import 'package:week_3_blabla_project/ui/theme/theme.dart';
import 'package:week_3_blabla_project/utils/date_time_utils.dart';

class RidePrefTile extends StatelessWidget {
  final RidePref ridePref;
  final VoidCallback? onPressed;

  const RidePrefTile({
    super.key,
    required this.ridePref,
    this.onPressed,
  });

  String get title => "${ridePref.departure.name} → ${ridePref.arrival.name}";

   String get subtitle {
    final dateStr = DateTimeUtils.formatDateTime(ridePref.departureDate);
    return "$dateStr, ${ridePref.requestedSeats} passenger(s)";
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.history),
      title: Text(title, 
      style: BlaTextStyles.body,
      ),
      subtitle: Text(subtitle),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: BlaColors.iconLight,
        size: 16,
      ),
      onTap: onPressed,
    );
  }
}
