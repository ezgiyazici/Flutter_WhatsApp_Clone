import 'package:flutter/material.dart';
import 'package:flutter_wp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(dummyData[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(dummyData[i].message,
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0)),
            ),
          )
        ],
      ),
      itemCount: dummyData.length,
    );
  }
}
