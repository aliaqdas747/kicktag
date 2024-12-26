import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';

import '../profile/conformation.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailaddress;
  late TextEditingController password;

  bool isCheck = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    emailaddress = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    emailaddress.dispose();
    password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFE),
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
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.06),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: heightScreen * 0.015),
              Text(
                'LogIn',
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w500,
                    fontSize: widthScreen * 0.055,
                    color: const Color(0xFF000000)),
              ),
              SizedBox(height: heightScreen * 0.015),
              Text(
                'Please Enter your details to continue',
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: widthScreen * 0.04,
                    color: const Color(0xFF9D9D9D)),
              ),
              SizedBox(height: heightScreen * 0.045),
              Text(
                'Email',
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: widthScreen * 0.035,
                    color: const Color(0xFF000000)),
              ),
              SizedBox(height: heightScreen * 0.01),
              TextFormField(
                controller: emailaddress,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  hintText: 'example@gmail.com',
                  hintStyle: GoogleFonts.outfit(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: const Color(0xFF000000).withOpacity(0.5)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFfD8DADC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: heightScreen * 0.02),
              Text(
                'Password',
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: widthScreen * 0.035,
                    color: const Color(0xFF000000)),
              ),
              SizedBox(height: heightScreen * 0.01),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.black,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      size: 16,
                      color: const Color(0xFF000000).withOpacity(0.6),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  hintText: 'must be 8 characters',
                  hintStyle: GoogleFonts.outfit(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: const Color(0xFF000000).withOpacity(0.5)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFfD8DADC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(8.0),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Forget password',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF0B0B0D)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: heightScreen * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: const Color(0xFF87CEEB),
                    checkColor: Colors.white,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = value!;
                      });
                    },
                  ),
                  Text(
                    'I accept the terms and privacy policy',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w300,
                        fontSize: widthScreen * 0.035,
                        color: const Color(0xFF000000)),
                  ),
                ],
              ),
              SizedBox(height: heightScreen * 0.02),
              CustomButtonWidget(
                  title: 'LogIn',
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Conformation()),
                      )),
              SizedBox(height: heightScreen * 0.02),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: const Color(0xFf000000).withOpacity(0.24),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Or Sign Up With',
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF707382)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Divider(
                    color: const Color(0xFf000000).withOpacity(0.24),
                  )),
                ],
              ),
              SizedBox(height: heightScreen * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      style: IconButton.styleFrom(
                          shape: const CircleBorder(
                              side: BorderSide(color: Color(0xFFD8DADC)))),
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/logo/facebook.png',
                      )),
                  IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          shape: const CircleBorder(
                              side: BorderSide(color: Color(0xFFD8DADC)))),
                      icon: Image.asset(
                        'assets/logo/google.png',
                      )),
                  IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          shape: const CircleBorder(
                              side: BorderSide(color: Color(0xFFD8DADC)))),
                      icon: Image.asset('assets/logo/apple.png')),
                ],
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Navigate to login screen
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Don’t have an Account? ',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7),
                            fontSize: widthScreen * 0.035),
                      ),
                      TextSpan(
                        text: 'Create Account',
                        style: GoogleFonts.inter(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: widthScreen * 0.035),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
