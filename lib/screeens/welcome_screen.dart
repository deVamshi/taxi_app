import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.pin_drop_rounded,
              // LineAwesomeIcons.map_marker,
              size: 150,
              color: Colors.grey[100],
            ),
            Text(
              "Fijo Taxi",
              style: GoogleFonts.lato(
                  color: Colors.grey[100],
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
