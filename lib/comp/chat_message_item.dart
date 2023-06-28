import 'package:flutter/material.dart';

class ChatMessageItem extends StatelessWidget {
  final bool isMeChatting;
  final String messageBody;

  ChatMessageItem({required this.isMeChatting, required this.messageBody});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMeChatting ? Alignment.bottomRight : Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: isMeChatting
                ? BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
            color: isMeChatting ? Colors.blue[900] : Colors.white),
        margin: EdgeInsets.all(8),
        child: Text(
          messageBody,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: isMeChatting ? Colors.white : Colors.blue[900],
            height: 1.2,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
