import 'package:flutter/material.dart';
import 'package:wea_prj/comp/chat_message_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 90,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                  SizedBox(width: 15),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    radius: 28,
                    child: Text(
                      "HP",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HP Offcial Store",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "Active 5 hours ago",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    tooltip: "more options",
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.grey.shade200,
              child: ListView(
                padding: EdgeInsets.all(15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                    height: 80,
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            "images/pc.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HP Omen Gaming",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Type: Gaming",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$1580",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ChatMessageItem(
                    isMeChatting: true,
                    messageBody:
                        "Hi Dear, this laptop still have a stock? I wanna buy 100 pcs",
                  ),
                  ChatMessageItem(
                    isMeChatting: false,
                    messageBody: "Yes, it's still have stock.",
                  ),
                  ChatMessageItem(
                    isMeChatting: true,
                    messageBody: "great, then deliver it to my address",
                  ),
                  ChatMessageItem(
                    isMeChatting: true,
                    messageBody: "Would you give me some discount or bonus?",
                  ),
                  ChatMessageItem(
                    isMeChatting: false,
                    messageBody: "Yes, I will",
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: [
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type Somthing...",
                  helperStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  )),
                  minLines: 1,
                  maxLines: 10,
            )),
            SizedBox(width: 20,),
            InkWell(
              onTap: (){},
              hoverColor: Colors.white,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(13),
                ),
                alignment: Alignment.center,
                child: Icon(Icons.send_rounded,
                size: 27,
                color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
