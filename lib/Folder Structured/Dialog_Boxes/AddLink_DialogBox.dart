import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/profile/editprofile.dart';

class LinkCustomDialogBox extends StatefulWidget {
 final TextEditingController linkController  = TextEditingController();

  LinkCustomDialogBox({super.key});
  @override
  State<LinkCustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<LinkCustomDialogBox> {
  @override
  Widget build(BuildContext context) {

    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        clipBehavior: Clip.none, // Allows content to go outside the dialog
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20), // Space for the overlapping icon
                // Title
                Row(
                  children: [
                    Text(
                      "Messenger",
                      style: GoogleFonts.outfit(fontWeight: FontWeight.w500,fontSize: 24)
                    ),
                  ],
                ),
                Divider(),
                 SizedBox(height: 5,),
                 Text('Facebook link or user name',style: GoogleFonts.outfit(fontSize: 12,fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                // Input field
               textfieldwidget(  nameController: widget.linkController, hinttext: 'info@gmail.com',icons: Icons.close,),
                SizedBox(height: 16.0),
                // Buttons
                 Row(
                   children: [
                     Expanded(child: SizedBox(
                         height: 48,
                         width: 146,
                         child: ElevatedButton(
                             style: ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor: Colors.white),
                             onPressed: (){}, child: Text('Delete')))),
                   SizedBox(width: 5,),
                     Expanded(child: SizedBox(
                       height: 48,
                       width: 146,
                       child: OutlinedButton(

                           style: ElevatedButton.styleFrom(

                               backgroundColor: Colors.white,foregroundColor: Colors.black),
                           onPressed: (){
                             ///.....
                           }, child: Text('Save')),
                     ))

                   ],
                 )
              ],
            ),
          ),
          // Overlapping icon
          Positioned(
            top: -40, // Moves the icon above the dialog
            left: MediaQuery.of(context).size.width * 0.10, // Center alignment
            right: MediaQuery.of(context).size.width * 0.50,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.facebook,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}