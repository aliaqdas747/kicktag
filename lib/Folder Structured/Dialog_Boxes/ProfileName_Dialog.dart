import 'package:flutter/material.dart';

import 'AddNewProfileDialog.dart';

class ProfileName_Dialog extends StatelessWidget {
  const ProfileName_Dialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('Profile Name'),
      content: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Business',
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            suffixIcon: Container(
              margin:
              const EdgeInsets.all(
                  10),
              child: const Column(
                mainAxisAlignment:
                MainAxisAlignment
                    .center,
                children: [],
              ),
            ),
            hintStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
            const EdgeInsets
                .symmetric(
                vertical: 16,
                horizontal: 20),
            enabledBorder:
            OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(
                  10.0),
              borderSide: BorderSide(
                color:
                Colors.grey.shade300,
                width: 1.0,
              ),
            ),
            focusedBorder:
            OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(
                  30.0),
              borderSide:
              const BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
          ),
          keyboardType:
          TextInputType.phone,
        ),
      ),
      actions: <Widget>[
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop();
                    showDialog(
                        context: context,
                        builder: (BuildContext
                        context) {
                          return const AddNewProfileDialog();
                        });
                  },
                  style: ElevatedButton
                      .styleFrom(
                      backgroundColor:
                      Colors.black),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.white),
                  ),
                )),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: OutlinedButton(
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                      color:
                      Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pop(); // Close the dialog
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}

