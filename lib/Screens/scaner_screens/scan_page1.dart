import 'package:flutter/material.dart';
import 'package:kuicktag/Screens/scaner_screens/scan_page2.dart';

class ScanPage1 extends StatelessWidget {
  const ScanPage1({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const Text('Tap the button below to begin activation',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),)
     ,
          Container(
            margin: const EdgeInsets.only(bottom: 100),
       width: 249,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScanPage2()));

                }, child: const Text('Activate your device',style: TextStyle(color: Colors.white),)),
     ),

        ],
      ),
    );
  }
}
