import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  static String id = 'ChatScreen';

  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollection);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: messages.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data!.docs[0]['message']);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kPrimaryColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    kLogo,
                    height: 50,
                    width: 50,
                  ),
                  const Text('CHAT'),
                ],
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return const ChatBubble();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add(
                        {
                          'message': data,
                        },
                      );
                      controller.clear();
                    },
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      suffixIcon: const Icon(
                        Icons.send_rounded,
                        color: kPrimaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return const Text('Loading....');
        }
      },
    );
  }
}
