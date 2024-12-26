import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';

class CustomSmallButtonWidget extends StatelessWidget {
  const CustomSmallButtonWidget({
    super.key,
    this.onPressed,
    required this.title,
  });
  final VoidCallback? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: const Color(0xFFB5B5B6).withOpacity(0.4)),
          borderRadius: BorderRadius.circular(70),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.outfit(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF131313)),
      ),
    );
  }
}
