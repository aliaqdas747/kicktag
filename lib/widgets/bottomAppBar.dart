import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Analytics/analaytics.dart';
import 'package:kuicktag/Screens/scaner_screens/scan_page1.dart';
import 'package:kuicktag/Social_Links.dart';
import 'package:kuicktag/Folder%20Structured/profile/conformation.dart';
import 'package:kuicktag/constants/app_colors.dart';


import '../Folder Structured/leads/NetWorkDashboard.dart';
import '../Folder Structured/leads/menu.dart';


class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentTab = 0;

  final List<Widget> screens = [
    const NetWorkDashboard(),
    const Conformation(),

    const SocialLinks(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const Conformation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF87CEEB),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScanPage1()));
        },
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          color: AppColors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Conformation();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.figtree(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: currentTab == 0
                                  ? const Color(0xFF202244)
                                  : const Color(0xFF5E5F60)),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const NetWorkDashboard();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Network',
                          style: GoogleFonts.figtree(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: currentTab == 1
                                  ? const Color(0xFF202244)
                                  : const Color(0xFF5E5F60)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const AnalayticsScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.analytics,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Analytics',
                          style: GoogleFonts.figtree(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: currentTab == 2
                                  ? const Color(0xFF202244)
                                  : const Color(0xFF5E5F60)),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MenuScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Menu',
                          style: GoogleFonts.figtree(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: currentTab == 3
                                  ? const Color(0xFF202244)
                                  : const Color(0xFF5E5F60)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
