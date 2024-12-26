import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> inboxMsgs = [
    {'message': 'Hi, Nicholas Good Evening 😊', 'isMe': true, 'time': '10:45'},
    {
      'message': 'How was your UI/UX Design Course Like? 😊',
      'isMe': true,
      'time': '10:47'
    },
    {'message': 'Hi, Morning too Ronald', 'isMe': false, 'time': '11:22'},
    {
      'message': 'Hello, I also just finished the Sketch Basic ⭐⭐⭐⭐⭐',
      'isMe': false,
      'time': '11:42'
    },
    {'message': 'OMG, This is Amazing..', 'isMe': true, 'time': '11:59'},
    {'message': 'Hi, Nicholas Good Evening 😊', 'isMe': true, 'time': '10:45'},
    {
      'message': 'How was your UI/UX Design Course Like? 😊',
      'isMe': true,
      'time': '10:47'
    },
    {'message': 'Hi, Morning too Ronald', 'isMe': false, 'time': '11:22'},
    {
      'message': 'Hello, I also just finished the Sketch Basic ⭐⭐⭐⭐⭐',
      'isMe': false,
      'time': '11:42'
    },
    {'message': 'OMG, This is Amazing..', 'isMe': true, 'time': '11:59'},
  ];

    ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Inbox', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone_in_talk)),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: inboxMsgs.length,
              itemBuilder: (context, index) {
                final message = inboxMsgs[index];
                return ChatBubble(
                  message: message['message'],
                  isMe: message['isMe'],
                  time: message['time'],
                );
              },
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message...',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.attach_file_outlined, color: Colors.black),
                    onPressed: () {},
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_voice,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String time;

  const ChatBubble({super.key, 
    required this.message,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isMe ? Colors.black : Colors.grey[100],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: isMe ? const Radius.circular(20) : const Radius.circular(0),
                bottomRight: isMe ? const Radius.circular(0) : const Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              message,
              style: TextStyle(
                color: isMe ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
