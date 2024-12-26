import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';

class ApplinkToggleScreen extends StatefulWidget {
  const ApplinkToggleScreen({super.key});

  @override
  State<ApplinkToggleScreen> createState() => _ApplinkToggleScreenState();
}

class _ApplinkToggleScreenState extends State<ApplinkToggleScreen> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgcolor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('App & link store',
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
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: const Color(0xFFE3E3E3))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/sorting.png'),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE3E3E3))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/logo/facebook.png'),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Facebook',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: _isOn,
                        onChanged: (bool value) {
                          setState(() {
                            _isOn = value;
                          });
                        },
                        trackOutlineColor: _isOn
                            ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                            : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: const Color(0xFF5ADB6D),
                        activeColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
