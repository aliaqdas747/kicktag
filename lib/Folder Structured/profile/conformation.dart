import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/Dialog_Boxes/PrivecySettingDialog.dart';
import 'package:kuicktag/connect/applinkstore.dart';
import 'package:kuicktag/widgets/textfields/custom_TextField.dart';

import '../Dialog_Boxes/Discoverability.dart';
import '../Dialog_Boxes/ProfileName_Dialog.dart';
import 'editprofile.dart';

class Conformation extends StatefulWidget {
  const Conformation({super.key});

  @override
  State<Conformation> createState() => _ConformationState();
}

class _ConformationState extends State<Conformation> {
  bool personal = true;
  bool lead = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image.jpg'),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: IconButton(
                              style: IconButton.styleFrom(
                                  minimumSize: const Size(29, 29),
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xFF767676)),
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
                          Text(
                            'Social',
                            style: GoogleFonts.outfit(fontWeight: FontWeight.w500,fontSize: 24)
                          ),
                          Container(
                            height: 42,
                              width: 42,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: FittedBox(
                                child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext
                                          context) {
                                            return const ProfileName_Dialog();
                                          });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      size: 40,
                                    )),
                              )),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           SizedBox(
                             height: 77,
                             width: 77,
                             child: Stack(
                               children: [
                                 Container(

                                 decoration: BoxDecoration(
                                     boxShadow: const [
                                       BoxShadow(
                                         color: Colors.white,
                                         blurRadius: 6,
                                         spreadRadius: 1,
                                       )
                                     ],
                                   borderRadius: BorderRadius.circular(100),
                                   color: Colors.grey
                                 ),

                                   child: const Padding(
                                     padding: EdgeInsets.all(1.0),
                                     child: Center(child: Text(' Company Logo',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),textAlign: TextAlign.center,)),
                                   )),
                               Positioned(
                                   top: 50,left: 60,
                                   child: Container(
                                     decoration: BoxDecoration(
                                         color: Colors.black,

                                       borderRadius: BorderRadius.circular(100)
                                     ),
                                     height: 18,width: 18,
                                   child: const Icon(Icons.edit,color: Colors.white,size: 8,),
                                   ))
                               ]
                             ),
                           )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                              Text(
                              'Lead',
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Transform.scale(
                                scale: 0.7,
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child: Switch(
                                    value:lead ,
                                    onChanged: (bool value) {
                                      setState(() {
                                        lead = value;
                                        if(lead == true){
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext
                                              context) {
                                                return const Discoverability();
                                              });
                                        }
                                      });
                                    },
                                    trackOutlineColor: lead
                                        ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                                        : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                                    inactiveThumbColor: Colors.black,
                                    inactiveTrackColor: Colors.white,
                                    activeTrackColor: const Color(0xFF5ADB6D),
                                    activeColor: Colors.black,
                                  ),
                                ),
                                ),
                            InkWell(
                                onTap: (){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext
                                      context) {
                                        return const Discoverability();
                                      });
                                },
                                child: const Icon(Icons.info_outline,size: 15,)),
                              const SizedBox(width: 3,),

                              Text(
                              'personal',
                              style: GoogleFonts.outfit(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: Switch(
                                value:personal ,
                                onChanged: (bool value) {
                                  setState(() {
                                    personal = value;
                                    if(personal == true){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext
                                          context) {
                                            return const PrivacySettingDialog();
                                          });
                                    }
                                  });
                                },
                                trackOutlineColor: personal
                                    ? const WidgetStatePropertyAll(Color(0xFF5ADB6D))
                                    : const WidgetStatePropertyAll(Color(0xFFD8DADC)),
                                inactiveThumbColor: Colors.black,
                                inactiveTrackColor: Colors.white,
                                activeTrackColor: const Color(0xFF5ADB6D),
                                activeColor: Colors.black,
                              ),
                            ),
                            InkWell(
                                onTap: (){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext
                                      context) {
                                        return const PrivacySettingDialog();
                                      });
                                },
                                child: const Icon(Icons.info_outline,size: 15,)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text(
                                'Kristin Watson',
                                style: GoogleFonts.outfit(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(
                                  height: 25,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AppLinkStoreScreen()));
                                      },
                                      child: Text(
                                        '  Add Apps ',
                                        style: GoogleFonts.outfit(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,color: Colors.black
                                        ),
                                      ))),
                              SizedBox(
                                  height: 25,
                                  child: OutlinedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Theme',
                                        style: GoogleFonts.outfit(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,color: Colors.black
                                        ),
                                      )))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const custom_TextField(
                          title: 'Company Name',
                          suffixText: 'MHK Soul',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const custom_TextField(
                          title: 'Phone',
                          suffixText: '(201) 555-0124',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const custom_TextField(
                          title: 'Job Title',
                          suffixText: '(201) 555-0124',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfileScreen()));
                                },
                                child: const Text(
                                  'Edit profile',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                top: 200,
                left: 10,
                child:   SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                      children: [
                        Container(

                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 6,
                                    spreadRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xFFD9D9D9)
                            ),

                            child: const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Center(child:Icon(Icons.person_outline,size: 60,)),
                            )),
                        Positioned(
                            top: 70,left: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,

                                  borderRadius: BorderRadius.circular(100)
                              ),
                              height: 24,width: 24,
                              child: const Icon(Icons.edit,color: Colors.white,size: 12,),
                            ))
                      ]
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

