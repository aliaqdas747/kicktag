import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/Folder%20Structured/profile/editprofile.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key, this.phoneNumber});
  final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFE),
        leading: IconButton(
          style: IconButton.styleFrom(
              minimumSize: const Size(29, 29),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFD8DADC)),
                  borderRadius: BorderRadius.circular(6.0))),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.01),
              Text(
                'Verification Code',
                style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF282828)),
              ),
              SizedBox(height: screenHeight * 0.01),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Please Enter The Code We Just Have Sent To Email\n',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF707382)),
                    children: [
                      TextSpan(
                        text: 'Info123@gmail.com',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF0B0B0D),
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: screenHeight * 0.07),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 55,
                      height: 48,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: const Color(0xFF293056),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xFF293056)),
                        decoration: InputDecoration(
                            hintText: '-',
                            fillColor: const Color(0xFFD9D9D9).withOpacity(0.1),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF293056)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF293056)),
                                borderRadius: BorderRadius.circular(10.0))),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 55,
                      height: 48,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: const Color(0xFF293056),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF293056)),
                        decoration: InputDecoration(
                            hintText: '-',
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF293056)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF3C3C3C)),
                                borderRadius: BorderRadius.circular(10.0))),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 55,
                      height: 48,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: const Color(0xFF293056),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF293056)),
                        decoration: InputDecoration(
                            hintText: '-',
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF293056)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF3C3C3C)),
                                borderRadius: BorderRadius.circular(10.0))),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 55,
                      height: 48,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: const Color(0xFF293056),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF293056)),
                        decoration: InputDecoration(
                            hintText: '-',
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF293056)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF3C3C3C)),
                                borderRadius: BorderRadius.circular(10.0))),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20.0),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Didn’t Receive OTP?',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF707382)),
                    )),
              ),
              const Gap(10),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Resend Code',
                      style: GoogleFonts.roboto(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF0B0B0D)),
                    )),
              ),
              const Gap(10),
              CustomButtonWidget(
                  title: 'Verify',
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileScreen()),
                      )),
              const Gap(20.0),
            ],
          ),
        ),
      ),
    );
  }
}
