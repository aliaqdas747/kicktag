import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';

class AnalayticsScreen extends StatelessWidget {
  const AnalayticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgcolor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Analytics',
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
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFD8DADC).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Past 24 Hours',
                        style: GoogleFonts.outfit(
                          fontSize: 24,
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          anatics_countwidget(
                            count: '0',
                            title: 'Views',
                          ),
                          anatics_countwidget(
                            count: '0',
                            title: 'Clicks',
                          ),
                          anatics_countwidget(
                            count: '0%',
                            title: 'Click rate',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Year',
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const yearwidget(
                title: 'No of Profile Views',
                icons: Icons.visibility,
              ),
              const SizedBox(height: 4),
              const yearwidget(
                title: 'No of Clicks',
                icons: Icons.ads_click_rounded,
              ),
              const SizedBox(height: 4),
              const yearwidget(
                title: '0% Click Rates',
                icons: Icons.star_border_outlined,
              ),
              const SizedBox(height: 4),
              const yearwidget(
                title: 'No of Contacts',
                icons: Icons.person_pin_rounded,
              ),
              const SizedBox(height: 16),
              Text(
                'Statistics',
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),

              GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/telephone.png',
                      count: '2',
                    ),
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/watsapp_big.png',
                      count: '2',
                    ),
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/watsappbusiness.png',
                      count: '2',
                    ),
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/fiverr.png',
                      count: '2',
                    ),
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/network.png',
                      count: '2',
                    ),
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/home.png',
                      count: '2',
                    ),
                    StatisticsIconWidget(
                      imagepath: 'assets/logo/save.png',
                      count: '2',
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}

class StatisticsIconWidget extends StatelessWidget {
  const StatisticsIconWidget({
    super.key,
    required this.imagepath,
    required this.count,
  });
  final String imagepath;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 66,
        height: 66,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFE3E3E3),
            )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            imagepath,
            width: 33,
            height: 33,
          ),
        ),
      ),
      Positioned(
        right: 10,
        top: 10,
        child: Container(
          alignment: Alignment.center,
          width: 11,
          height: 11,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFF0B0B0D)),
          child: Text(
            count,
            style: GoogleFonts.outfit(
                color: AppColors.white,
                fontSize: 8,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    ]);
  }
}

class yearwidget extends StatelessWidget {
  const yearwidget({
    super.key,
    required this.icons,
    required this.title,
  });
  final IconData icons;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFB5B5B6).withOpacity(0.4)),
          borderRadius: BorderRadius.circular(56)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(title,
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFB5B5B6),
                ),
              ),
              child: Icon(
                icons,
                size: 15,
              )),
        ],
      ),
    );
  }
}

class anatics_countwidget extends StatelessWidget {
  const anatics_countwidget({
    super.key,
    required this.count,
    required this.title,
  });
  final String count;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,
            style: GoogleFonts.outfit(
              fontSize: 24,
              color: AppColors.black,
              fontWeight: FontWeight.w500,
            )),
        Text(
          title,
          style: GoogleFonts.outfit(
              fontWeight: FontWeight.w200,
              fontSize: 16,
              color: const Color(0xFF0B0B0D)),
        ),
      ],
    );
  }
}
