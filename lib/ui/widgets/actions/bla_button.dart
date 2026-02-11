import 'package:flutter/material.dart';

class BlaButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final Size? size;

  const BlaButton({
    super.key,
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
    required this.iconColor,
    this.size = const Size(300, 50),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        fixedSize: size,
      ),
      onPressed: () {}, 
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
