import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/widgets/bottomAppBar.dart';

import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFE),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: GoogleFonts.outfit(
              fontSize: 16,
              color: AppColors.black2,
              fontWeight: FontWeight.w500),
        ),
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
            Icons.arrow_back_ios_new,
            size: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: heightScreen * 0.015),
              titlewidget(
                  widthScreen: widthScreen, title: 'First  & last name'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                  nameController: nameController, hinttext: 'Kristin Watson'),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Email'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                  nameController: nameController, hinttext: 'info@gmail.com'),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Phone'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                  nameController: nameController, hinttext: '+0i9w w899'),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'About me'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                  nameController: nameController, hinttext: 'I AM......'),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Set currency'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'PKR',
                icons: Icons.arrow_drop_down,
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Job Title'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'UI/Ux designer',
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Company'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'Oracle',
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Industry type'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'Information technology',
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'State'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'Information technology',
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Country'),
              SizedBox(height: heightScreen * 0.015),
              // ! add a youtube icon iamge
              textfieldwidget(
                nameController: nameController,
                hinttext: 'Information technology',
                assetname: 'assets/logo/youtube.png',
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'Zip Code'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'Information technology',
              ),
              SizedBox(height: heightScreen * 0.015),
              titlewidget(widthScreen: widthScreen, title: 'YouTube Intro'),
              SizedBox(height: heightScreen * 0.015),
              textfieldwidget(
                nameController: nameController,
                hinttext: 'Paste link here',
              ),
              SizedBox(height: heightScreen * 0.015),
              CustomButtonWidget(
                  title: 'Save Changes',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomBottomNavBar()),
                    );
                  }),
              SizedBox(height: heightScreen * 0.015),
            ],
          ),
        ),
      ),
    );
  }
}

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
    return SizedBox(
      height: 60,
      child: TextFormField(
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
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color(0xFFB5B5B6).withOpacity(0.4)),
              borderRadius: BorderRadius.circular(58)),
        ),
      ),
    );
  }
}

class titlewidget extends StatelessWidget {
  const titlewidget({
    super.key,
    required this.widthScreen,
    required this.title,
  });

  final double widthScreen;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.outfit(
          fontWeight: FontWeight.w400,
          fontSize: widthScreen * 0.035,
          color: const Color(0xFF0B0B0D)),
    );
  }
}
