import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Offlinedialogbox extends StatelessWidget {
  const Offlinedialogbox({
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
                'Information',
                style:  GoogleFonts.outfit(fontSize: 24,fontWeight: FontWeight.w500)
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'In offline mode, others can save your contact by scanning your QR Code, even without internet access.',
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