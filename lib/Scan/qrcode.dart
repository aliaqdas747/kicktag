import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/Dialog_Boxes/OffLineDialogBox.dart';
import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/Scan/signature_preview.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({super.key});

  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
  bool _isOn = false;
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
        title: Text('QR Code',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: heightScreen * 0.03),
            Align(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                'Share',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: heightScreen * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: widthScreen * 0.15),
                Image.asset('assets/qrcode.png'),
                SizedBox(width: widthScreen * 0.1),
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.black,
                      foregroundColor: AppColors.white,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.download)),
              ],
            ),
            SizedBox(height: heightScreen * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'https://profile.kuicktag.com/p34214321',
                  style: GoogleFonts.outfit(
                      fontSize: 12,
                      color: AppColors.black,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(width: widthScreen * 0.02),
                IconButton(
                  style: IconButton.styleFrom(
                    minimumSize: const Size(29, 29),
                    shape: CircleBorder(
                        side: BorderSide(
                            color: const Color(0xFFB5B5B6).withOpacity(0.4))),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.copy,
                    color: Color(0xFF202244),
                    size: 16,
                  ),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    minimumSize: const Size(29, 29),
                    shape: CircleBorder(
                        side: BorderSide(
                            color: const Color(0xFFB5B5B6).withOpacity(0.4))),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Color(0xFF202244),
                    size: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _showInfoDialog,
                  child: InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (BuildContext context){
                        return const Offlinedialogbox();
                      });
                    },

                    child: const Icon(
                      Icons.info_outline_rounded,
                      size: 22,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  'Offline Mode',
                  style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(width: 4),
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
            SizedBox(height: heightScreen * 0.03),
            InkWell(
              borderRadius: BorderRadius.circular(70),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignaturePreviewScreen(),
                ));
              },
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
                      const Icon(Icons.alternate_email_rounded),
                      const Spacer(),
                      Text(
                        'Create email signature',
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
            const SizedBox(height: 8),
            CustomButtonWidget(
              title: 'Share Another Way',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  void _showInfoDialog() {
    final widthScreen = MediaQuery.of(context).size.width;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          alignment: Alignment.center,
          // Center the content vertically
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            textAlign: TextAlign.center,
            'Information',
            style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: const Color(0xFF0B0B0D)),
          ),
          content: Text(
            textAlign: TextAlign.center,
            'In offline mode, others can save your contact by scanning your QR Code, even without internet access.',
            style: GoogleFonts.outfit(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF767676)),
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                  minimumSize: Size(widthScreen * 0.4, 48),
                  backgroundColor: AppColors.black,
                  foregroundColor: AppColors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Ok',
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
      },
    );
  }
}
