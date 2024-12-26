import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanPage2 extends StatelessWidget {
  const ScanPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final WidthScreen = MediaQuery.of(context).size.width;
    final HeightScreen = MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 39,
              width: 39,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFD8DADC))),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, icon: const Icon(Icons.arrow_back_ios_sharp))),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            SizedBox(height: 50,),
            const Text('Tap the button below to begin activation',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            Container(height: 400,width: double.infinity,color: Colors.grey.shade300,child: Center(
              child: Image.asset('assets/camera_frame.png'),
            ),),
            SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.only(bottom: 100),
              width: 341,
              height: 48,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),

                  onPressed: (){
                    showModalBottomSheet(
                  
                      backgroundColor: Colors.white,
                      context: context,
                      shape: const RoundedRectangleBorder(
        
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(42),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return   SizedBox(

                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Choose Device',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down_outlined)
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Text('Choose Device That You Want To Activate'),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset('assets/scaner_images/Vector (3).png',height: 52,width: 52,),
                                          const SizedBox(height: 8),
                                          Text('Tag',style:  GoogleFonts.outfit(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500
                                          ),),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.of(context).pop();

                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(42),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return   SizedBox(
                          height: 258,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Choose Device',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down_outlined)
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                      width: 219,
                                      child: Text('Choose Device That You Want \nTo Activate',textAlign: TextAlign.center,style: GoogleFonts.outfit(fontSize: 14,fontWeight: FontWeight.w400,color: const Color(0xFF767676)),)),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                      Image.asset('assets/scaner_images/lets-icons_nfc.png',height: 52,width: 52,),
                                          const SizedBox(height: 8),
                                          Text('NFC',style:  GoogleFonts.outfit(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500
                                          ),),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                        Image.asset('assets/scaner_images/Group 1171275611.png',height: 52,width: 52,),
                                          const SizedBox(height: 8),
                                          Text('QR Code',style:  GoogleFonts.outfit(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                              
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                   
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset('assets/scaner_images/card (1).png',height: 52,width: 52,),
                                            const SizedBox(height: 8),
                                              Text('Card',
                                                style:  GoogleFonts.outfit(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 80,)
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Activate your device',style: TextStyle(color: Colors.white),)),
            ),
        
          ],
        ),
      ),
    );
  }
}

