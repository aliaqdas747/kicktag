import 'package:flutter/material.dart';

class AddNewProfileDialog extends StatelessWidget {
  const AddNewProfileDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
      Colors.white,
      content: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment
              .start,
          children: [
            Container(
              height:
              60,
              width: double
                  .infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors
                          .black,
                      width:
                      3),
                  color: Colors
                      .white,
                  borderRadius:
                  BorderRadius.circular(50)),
              child:
              FittedBox(
                child:
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      children: [
                        Text('Kamran Shabir'),
                        Text('info223@gmail.com'),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height:
              60,
              width: double
                  .infinity,
              decoration: BoxDecoration(
                  border: Border
                      .all(),
                  color: Colors
                      .white,
                  borderRadius:
                  BorderRadius.circular(50)),
              child:
              FittedBox(
                child:
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      children: [
                        Text('Kamran Shabir'),
                        Text('info223@gmail.com'),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height:
              10,
            ),
            SizedBox(
                width: double
                    .infinity,
                child: ElevatedButton
                    .icon(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed:
                      () {
                    Navigator.of(context).pop();

                  },
                  label:
                  const Text(
                    'Add new profile',
                    style:
                    TextStyle(color: Colors.white),
                  ),
                  icon:
                  const Icon(
                    Icons.add,
                    color:
                    Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

