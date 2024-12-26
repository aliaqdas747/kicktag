import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/Dialog_Boxes/Affliate_InformationDialogBox.dart';
import 'package:kuicktag/Screens/scaner_screens/scan_page1.dart';
import 'package:kuicktag/widgets/CustomTitlefield.dart';

class AffliateDashboard extends StatelessWidget {
  const AffliateDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
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
        title: Text(
          'Affiliate Dashboard',
          style: GoogleFonts.jost(
            fontSize: 21,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF202244),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                ' Become an Affiliate',
                style: GoogleFonts.jost(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF202244),
                ),
              ),
              const SizedBox(
                  width: 225,
                  child: Text(
                    ' Earn up to 30% commission on every sale!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                width: 337,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScanPage1()));
                    },
                    child: const Text(
                      'Become an Affiliate',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SelectableText('www.kuicktag.com/?ref=affiliate123'),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: const Color(0xFFD8DADC))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.copy),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: const Color(0xFFD8DADC))),
                        child: IconButton(
                            onPressed: () {
                              showDialog(context: context, builder: (BuildContext context){
                                return affliate_info_dialog();
                              });
                            }, icon: const Icon(Icons.info_outline)))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 329,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tracking',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '45 clicks',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Activated Devices',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '10',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Commission Earned',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '4500',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Estimated Payout',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '4500',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 329,
                child: Row(
                  children: [
                    Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: const Color(0xFFD8DADC))),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.info_outline))),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        width: 229,
                        child: Text(
                          'Payouts are paid 15th of every month for previous month sales.',
                          textAlign: TextAlign.start,
                          style:
                              TextStyle(color: Color(0xFF5E5F60), fontSize: 12),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'BANKING DETAILS FOR PAYOUT',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              
              const custumTitlefield(title: 'Title of Account', hint: 'Muhammad Ali ',),
              const custumTitlefield(title: 'Muhammad Ali ', hint: 'Habib Bank Limited	',),
              const custumTitlefield(title: 'IBAN Number', hint: ' PK86HABB12345678123654	',),
              const custumTitlefield(title: 'Account Number', hint: ' 3459682850214',),
             const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                width: 337,
                child: ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    )),
              ),

              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('PAYOUT HISTORY',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: const Color(0xFFD8DADC))),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.info_outline))),
                    ],
                  ),
                ),
              ),


              const SizedBox(
                width: 329,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payout Month',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Nov',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date of Disbursement',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'December 29, 2012',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction ID',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '8923642',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '45000',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),

                    SizedBox(height: 50,)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

