import 'package:flutter/material.dart';
import 'package:kuicktag/widgets/textfields/custom_TextField.dart';

class custumTitlefield extends StatelessWidget {
  final String title;
  final String hint;

  const custumTitlefield({
    super.key, required this.title, required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            custom_TextField(title: hint, suffixText: ''),
          ],
        ));
  }
}
