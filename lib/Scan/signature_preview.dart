import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';

class SignaturePreviewScreen extends StatelessWidget {
  const SignaturePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.bgcolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.bgcolor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Signature Preview',
              style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          leading: IconButton(
            style: IconButton.styleFrom(
              minimumSize: const Size(29, 29),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xFFD8DADC)),
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 16,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 153,
                          // child: Image.asset('assets/boss.png'),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/profilebig.png'))),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Kamran Shabir',
                          style: GoogleFonts.outfit(
                              fontSize: widthScreen * 0.06,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Business owner at transition',
                          style: GoogleFonts.outfit(
                              fontSize: widthScreen * 0.04,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFF767676)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 1,
                    height: heightScreen * 0.5,
                    color: const Color(0xFF767676),
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Image.asset('assets/qrcode.png'))
                ],
              ),
              const Spacer(),
              InkWell(
                borderRadius: BorderRadius.circular(70),
                onTap: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                    border: Border.all(
                      color: const Color(0xFFB5B5B6).withOpacity(0.4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.download_for_offline_rounded),
                        const Spacer(),
                        Text(
                          'Save email signature',
                          style: GoogleFonts.outfit(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF131313),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }
}
