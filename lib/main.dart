import 'package:flutter/material.dart';
import 'package:week_3_blabla_project/ui/widgets/actions/bla_button.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
              BlaButton(
                text: 'Click me',
                icon: Icons.person,
                backgroundColor: Colors.blue,
                textColor: Colors.white, 
                iconColor: Colors.white,
              ),
              BlaButton(
                text: 'Click me',
                icon: Icons.person,
                backgroundColor: Colors.white,
                textColor: Colors.blue,
                iconColor: Colors.blue,
              ),
          ],
        ),
      ),
    ),
  ));
}
