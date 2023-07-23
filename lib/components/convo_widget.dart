import 'package:flutter/material.dart';
import 'package:threads/models/friend.dart';

class ConvoWidget extends StatelessWidget {
  const ConvoWidget({
    super.key,
    required this.imageURL,
    this.recipient = "Recipient's Name",
    this.date = "Date",
    this.lastMessage = "Last Message",
  });

  ConvoWidget.fromFriend(Friend friend, {super.key})
      : imageURL = friend.imageURL,
        recipient = friend.name,
        date = friend.lastMessageTime,
        lastMessage = friend.lastMessage;

  final String imageURL;
  final String recipient;
  final String date;
  final String lastMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
                radius: 30.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          recipient,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      lastMessage,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
