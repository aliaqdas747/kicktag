import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textfieldwidgetsmall extends StatelessWidget {
  const textfieldwidgetsmall({
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
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        hintText: hinttext,
        hintStyle: GoogleFonts.outfit(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: const Color(0xFF000000).withOpacity(0.5)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFD8DADC)),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFD8DADC)),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8DADC)),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}