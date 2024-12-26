import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/profile/editprofile.dart';
import 'package:kuicktag/Screens/affliate_dashboard.dart';
import 'package:kuicktag/connect/applink_toggle.dart';
import 'package:kuicktag/connect/applinkstore.dart';
import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/Scan/qrcode.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';
import 'package:kuicktag/widgets/customsmallbuttonwidget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
        title: Text('Menu',
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
        actions: [
          IconButton(
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
              Icons.notifications_outlined,
              size: 16,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFD9D9D9),
                  ),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(4),
                  leading: const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  title: Text(
                    'Kamran Shabir',
                    style: GoogleFonts.outfit(
                      fontSize: widthScreen * 0.04,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Business Owner At Transition',
                    style: GoogleFonts.outfit(
                      fontSize: widthScreen * 0.03,
                      color: const Color(0xFF767676),
                    ),
                  ),
                  trailing: InkWell(
                    borderRadius: BorderRadius.circular(23),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfileScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      width: widthScreen * 0.25,
                      height: heightScreen * 0.05,
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Manage',
                            style: GoogleFonts.outfit(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,
                              ),
                              child: const Icon(
                                Icons.edit,
                                size: 13,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Complete Profile',
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          value: 1.0,
                          backgroundColor: Color(0xFFD9D9D9),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF767676)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          value: 1.0,
                          backgroundColor: Color(0xFFD9D9D9),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF767676)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          value: 1.0,
                          backgroundColor: Color(0xFFD9D9D9),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF767676)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          value: 0.0,
                          backgroundColor: Color(0xFFD9D9D9),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF767676)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          value: 0.0,
                          backgroundColor: Color(0xFFD9D9D9),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF767676)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '60% Completed',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black),
                      ),
                      Text(
                        '3/5 Completed',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomButtonWidget(
                    onPressed: () {},
                    title: 'Activate Profile',
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'QR Code',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QRCodeScreen()));
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: ' Order Kuicktag device',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppLinkStoreScreen(),
                          ));
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'Patner program',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ApplinkToggleScreen(),
                          ));
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'Earned with Kuicktag',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AffliateDashboard()));
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'Rate Us on Trustpilot',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'Rate Us on Google',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'Themes',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  CustomSmallButtonWidget(
                    title: 'How to use Kuicktag',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  CustomButtonWidget(
                    onPressed: () {},
                    title: 'Sign Out',
                  ),
                  const SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
