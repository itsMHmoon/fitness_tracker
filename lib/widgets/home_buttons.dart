import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonStyles {
  static ButtonStyle get primaryButton => ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 25.0, // Adjust padding as needed
          ),
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return const Color.fromARGB(255, 36, 37, 37);
            }
            return null; // Defer to the default value
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.white; // Change to your desired text color
            }
            return null; // Defer to the default value
          },
        ),
      );
}



class CustomTextStyles {
  static final TextStyle buttonText = GoogleFonts.outfit(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

