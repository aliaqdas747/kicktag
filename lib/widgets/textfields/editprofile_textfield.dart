import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textfieldwidget extends StatelessWidget {
  const textfieldwidget({
    super.key,
    required this.nameController,
    required this.hinttext,
    this.assetname,
    this.icons,
  });

  final TextEditingController nameController;
  final String hinttext;
  final IconData? icons;
  final String? assetname;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameController,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.black.withOpacity(0.4),
      decoration: InputDecoration(
        suffixIcon: assetname != null
            ? Image.asset(assetname.toString(), width: 5)
            : Icon(icons),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        hintText: hinttext,
        hintStyle: GoogleFonts.outfit(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: const Color(0xFF000000).withOpacity(0.5)),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: const Color(0xFFB5B5B6).withOpacity(0.4)),
          borderRadius: BorderRadius.circular(58),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: const Color(0xFFB5B5B6).withOpacity(0.4)),
            borderRadius: BorderRadius.circular(58)),
        border: OutlineInputBorder(
            borderSide:
            BorderSide(color: const Color(0xFFB5B5B6).withOpacity(0.4)),
            borderRadius: BorderRadius.circular(58)),
      ),
    );
  }
}
