import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kuicktag/constants/app_colors.dart';

import 'package:kuicktag/widgets/custombuttonwidget.dart';

import 'language.dart';
import 'login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'KUICKTAG',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  backgroundColor: AppColors.bgcolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                      side: const BorderSide(color: Colors.black12)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  ); // Handle button press
                },
                child: Text(
                  'Log In',
                  style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black2),
                ),
              ),
              const SizedBox(height: 10),
              CustomButtonWidget(
                  title: 'Register an account',
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LanguageSelectionScreen()),
                      )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
