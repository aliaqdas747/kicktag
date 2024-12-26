import 'package:flutter/material.dart';
import 'package:kuicktag/widgets/contact_btns.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Social_Links.dart';
import '../Dialog_Boxes/contactDialog.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Stack(
                children: [
                  Column(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/boss.png'), fit: BoxFit.cover)),
              ),
              const SizedBox()
            ],
                  ),
                  Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 60),
                    child: Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xFF5E5F60))),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios_sharp))),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22))),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 70,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Kamran Shabir ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                        Text('(public)'),
            
                        ],
                    ),
                    const SizedBox(height: 10,),
                    const Text('Business owner at transition',style: TextStyle(color: Color(0xFF767676),fontSize: 14),),
                  const SizedBox(height: 10,),
                    const SizedBox(
                        width: 335,
                        child: Text('Kamran Shabbir is the CEO of Transition Technologies Limited and a   seasoned     entrepreneur    with    extensive   business expertise. With a proven track record of driving growth and innovation, he leads with a vision for excellence. Kamran is dedicated to delivering impactful solutions and fostering sustainable success.',textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF767676),fontSize: 10),)),
            
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const contact_buttons(title: 'Call', iconData: Icons.phone,),
                       const SizedBox(width: 10,),
                        SizedBox(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Watsapp',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                            const SizedBox(width: 3,),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: const Color(0xFFD8DADC))),
                                child: FittedBox(
                                  child: IconButton(
                                      onPressed: () {},
                                    icon:   const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green,size: 50,),
                                  ),
                                ))
                          ],
                        ),),
                        const SizedBox(width: 10,),
                        const contact_buttons(title: 'Save', iconData: Icons.save,),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    SizedBox(
                      width: 327,
                      height: 42,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => const ContactDialog(),
                          );
                        }, label: const Text('Reach Out',style: TextStyle(color: Colors.white),),
                        icon: const Icon(Icons.person_outline,color: Colors.white,),),),
                    const SizedBox(height: 50,),
                    Container(
                      height: 221,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(image: AssetImage('assets/vedion.png',),fit: BoxFit.cover)
                      ),
                      child: Center(
                        child: Image.asset('assets/play_btn.png'),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Row(
                        children: [
                          Text('Social links',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(
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
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
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
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
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
                    ),
                    SizedBox(height: 20,)
            
                  ],
                ),
              )
            ],
                  ),
                  Positioned(
                    top: 140,
                    left: 140,
                    child: Container(
            
                      height: 128,
                      width: 128,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/boss.png'),
                        ),
                      ),
                    ),
                  )
                ]),
          )),
    );
  }
}

