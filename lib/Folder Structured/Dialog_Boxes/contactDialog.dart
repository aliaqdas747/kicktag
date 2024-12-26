import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/widgets/textfields/cus_TextField_s.dart';

class ContactDialog extends StatelessWidget {
  const ContactDialog({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController  = TextEditingController();
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Full Name',style: GoogleFonts.outfit(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,

              ),),
            ),
            textfieldwidgetsmall(nameController: nameController, hinttext: ''),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Email',style: GoogleFonts.outfit(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,

              ),),
            ),
            textfieldwidgetsmall(nameController: nameController, hinttext: ''),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Phone',style: GoogleFonts.outfit(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,

              ),),
            ),
            textfieldwidgetsmall(nameController: nameController, hinttext: ''),
            const SizedBox(height: 16.0),

            SizedBox(
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  // Add your functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 32.0,
                  ),
                ),
                child: const Text(
                  'Exchange Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}