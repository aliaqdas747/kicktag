import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discoverability extends StatelessWidget {
  const Discoverability({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Discoverability',
                style:  GoogleFonts.outfit(fontSize: 24,fontWeight: FontWeight.w500)
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'When set to Personal, your contact information will remain hidden in search results',
              textAlign: TextAlign.center, style: GoogleFonts.outfit(color: const Color(0xFF767676),fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(

                width:146,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}