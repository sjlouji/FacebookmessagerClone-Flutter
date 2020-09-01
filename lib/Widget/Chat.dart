import 'package:flutter/material.dart';
import 'package:messangerclone_flutter/Model/ChatList.dart';
import 'package:messangerclone_flutter/Screen/Home.dart';

void main() {
  runApp(ChatWidgetPage());
}

class ChatWidgetPage extends StatelessWidget {
  // This widget is the root of your application.
  ChatWidgetPage({Key key, this.chat}) : super(key: key);

  Chat chat;
  @override
  Widget build(BuildContext context) {
    return ChatWidget(chat: chat,);
  }
}

class ChatWidget extends StatefulWidget {
  ChatWidget({Key key, this.title, this.chat}) : super(key: key);

  final String title;
  Chat chat;

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {

  @override
  Widget build(BuildContext context) {

    return  Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(widget.chat.profileUrl),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.chat.username, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.chat.userMessage),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(widget.chat.timeago)
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          widget.chat.seen?
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue
            ),
            child: Column(
              children: [

              ],
            ),
          )
              :
          SizedBox.shrink()
        ],
      ),
    );
  }
}
