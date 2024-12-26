import 'package:flutter/material.dart';

class contact_buttons extends StatelessWidget {
  final String title;
  final IconData iconData;

  const contact_buttons({
    super.key, required this.title, required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
        const SizedBox(width: 3,),
        Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: const Color(0xFFD8DADC))),
            child: FittedBox(
              child: IconButton(
                  onPressed: () {}, icon: Icon(iconData,size: 50,color: Colors.green,)),
            ))
      ],
    ),);
  }
}
