import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';
// import 'package:iconsax/iconsax.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgcolor,
        automaticallyImplyLeading: false,
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
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 295,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                        image: AssetImage('assets/boss.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(18),
                              bottomLeft: Radius.circular(18))),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kamran Shabir',
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                    Text(
                                      'Business owner at transition',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Colors.black,
                                        )))
                              ],
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    label: const Text(
                                      'Call',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    icon: const Icon(Icons.call, color: Colors.black,),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    label: const Text(
                                      'WhatsApp',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    icon: const Icon(Icons.message, color: Colors.black,),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    label: const Text(
                                      'Save',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    icon: const Icon(Icons.save, color: Colors.black,),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Kamran Shabbir is the CEO of Transition Technologies Limited and a   seasoned     entrepreneur    with    extensive   business expertise. With a proven track record of driving growth and innovation, he leads with a vision for excellence. Kamran is dedicated to delivering impactful solutions and fostering sustainable success.',
                style: GoogleFonts.outfit(fontWeight: FontWeight.w400, fontSize: 12, color: const Color(0xFF767676)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Social links',
                style:  GoogleFonts.outfit(

                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'Facebook',
                      image: 'assets/logo/facebook.png',
                      onTap: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'Snapchat',
                      image: 'assets/logo/snapchat.png',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'LinkedIn',
                      image: 'assets/logo/linkin.png',
                      onTap: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'Email',
                      image: 'assets/logo/emaill.png',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'WhatsApp',
                      image: 'assets/logo/watsapp.png',
                      onTap: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'YouTube',
                      image: 'assets/logo/youtube.png',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'Gmail',
                      image: 'assets/logo/gmail.png',
                      onTap: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 138,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Custombuttonwidget(
                      title: 'Instagram',
                      image: 'assets/logo/insta.png',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Custombuttonwidget extends StatelessWidget {
  const Custombuttonwidget(
      {super.key, this.onTap, required this.title, required this.image});
  final VoidCallback? onTap;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 8),
          Text(
            title,
            style: GoogleFonts.outfit(
                fontSize: 16,
                color: AppColors.black2,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE3E3E3)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(image),
                )),
          )
        ],
      ),
    );
  }
}
