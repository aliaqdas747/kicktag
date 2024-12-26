import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_TextField extends StatelessWidget {
  final String title;
  final String suffixText;

  const custom_TextField({
    super.key,
    required this.title,
    required this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14
        ),
        suffixIcon: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(suffixText, style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,color: const Color(0xFF767676)
              ),),
            ],
          ),
        ),
        hintStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
