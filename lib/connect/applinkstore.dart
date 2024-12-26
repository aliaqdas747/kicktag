import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/Dialog_Boxes/AddLink_DialogBox.dart';
import 'package:kuicktag/constants/app_colors.dart';

class AppLinkStoreScreen extends StatelessWidget {
  const AppLinkStoreScreen({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,
                            color: const Color(0xFF3C3C43).withOpacity(0.6)),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.outfit(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFD8DADC)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFD8DADC)),
                        ),
                        suffixIcon: Container(
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF87CEEB),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(Icons.tune_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8), // Space before the indicator
              const Titlewidget(
                title: 'Contact',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/logo/watsapp.png',
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context){
                          return LinkCustomDialogBox();
                        });
                      },
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/network.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/gmail.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/ph.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/telegram.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/emaill.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/message.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // Space before the indicator
              const dotindicatorwidget(),
              const Titlewidget(
                title: 'Social Media',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/logo/facebook.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/linkin.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/snapchat.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/twitter.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/tiktok.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // Space before the indicator
              const dotindicatorwidget(),
              const Titlewidget(
                title: 'Business',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/business/drive.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/discord.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/appstore.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/playstore.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/video.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/web.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/dropbox.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // Space before the indicator
              const dotindicatorwidget(),
              const Titlewidget(
                title: 'Portfolio',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/behance.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/sp.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/github.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/business/discord.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/up.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/reddit.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/bp.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // Space before the indicator
              const dotindicatorwidget(),
              const Titlewidget(
                title: 'Payment',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/payment/sparebank1.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/payment/googlepay.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/payment/zelle.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/payment/zelle.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/payment/stripe.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/payment/yellow.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/payment/venmo.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // Space before the indicator
              const dotindicatorwidget(),
              const Titlewidget(
                title: 'Music',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/music/music.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/music/soundcloud.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/music/spotify.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/portfolio/up.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Space before the indicator
              // const dotindicatorwidget(),
              const Titlewidget(
                title: 'Content',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/content/checkmark.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/content/resume.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/content/profilefill.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Space before the indicator
              // const dotindicatorwidget(),
              const Titlewidget(
                title: 'Custom Links',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      imagepath: 'assets/custom/bold.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/custom/link.png',
                      onPressed: () {},
                    ),
                    IconButtonWidget(
                      imagepath: 'assets/logo/youtube.png',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Space before the indicator
            ],
          ),
        ),
      ),
    );
  }
}

class Titlewidget extends StatelessWidget {
  const Titlewidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.outfit(
          fontSize: 24, color: AppColors.black, fontWeight: FontWeight.w500),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    this.onPressed,
    required this.imagepath,
  });
  final VoidCallback? onPressed;
  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
          shape:
              const CircleBorder(side: BorderSide(color: Color(0xFFE3E3E3)))),
      onPressed: onPressed,
      icon: Image.asset(
        imagepath,
        width: 25,
      ),
    );
  }
}

class dotindicatorwidget extends StatelessWidget {
  const dotindicatorwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 8.0,
          height: 8.0,
          decoration: const BoxDecoration(
            color: Color(0xFF87CEEB),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 8.0,
          height: 8.0,
          decoration: const BoxDecoration(
            color: Color(0xFFD0D5DD),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 8.0,
          height: 8.0,
          decoration: const BoxDecoration(
            color: Color(0xFFD0D5DD),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
