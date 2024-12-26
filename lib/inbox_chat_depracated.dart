import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/inbox_msgs_depracated.dart';

import 'Folder Structured/profile/editprofile.dart';

class InBoxChatScreen extends StatelessWidget {
  const InBoxChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of chat data
    final List<Map<String, dynamic>> chatData = [
      {
        'name': 'Natasha',
        'message': 'Hey, how are you?',
        'unreadCount': 02,
        'time': '10:30',
      },
      {
        'name': 'Alex',
        'message': 'Meeting at 2 PM',
        'unreadCount': 0,
        'time': '9:15',
      },
      {
        'name': 'John',
        'message': 'Let’s catch up later.',
        'unreadCount': 01,
        'time': '2:15',
      },
      {
        'name': 'Mia',
        'message': 'Hey, how are you?',
        'unreadCount': 02,
        'time': '10:30',
      },
      {
        'name': 'Maria',
        'message': 'Meeting at 2 PM',
        'unreadCount': 0,
        'time': '9:15',
      },
      {
        'name': 'Tiya',
        'message': 'Let’s catch up later.',
        'unreadCount': 03,
        'time': '8:12',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: true,
        title: Text(
          'Inbox',
          style: GoogleFonts.jost(
            fontSize: 21,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF202244),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return   ChatScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF87CEEB),
                        minimumSize: const Size(double.infinity, 56)),
                    child: Text(
                      'Chat',
                      style: GoogleFonts.mulish(
                        fontSize: 15,
                        color: AppColors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EditProfileScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        minimumSize: const Size(double.infinity, 56)),
                    child: Text(
                      'Call',
                      style: GoogleFonts.mulish(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: chatData.length,
                itemBuilder: (context, index) {
                  final chat = chatData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      title: Text(
                        chat['name'],
                        style: GoogleFonts.jost(
                          fontSize: 16,
                          color: const Color(0xFF202244),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        chat['message'],
                        style: GoogleFonts.mulish(
                          fontSize: 13,
                          color: const Color(0xFF545454),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (chat['unreadCount'] > 0)
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF202244),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  chat['unreadCount'].toString(),
                                  style: GoogleFonts.mulish(
                                    fontSize: 11,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          const SizedBox(height: 4.0),
                          Text(
                            chat['time'],
                            style: GoogleFonts.mulish(
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF545454),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
