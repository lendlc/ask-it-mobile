import 'package:ask_it/constants.dart';
import 'package:ask_it/core/chat/chat_controller.dart';
import 'package:ask_it/core/chat/chat_model.dart';
import 'package:ask_it/screens/tutee/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: mediumTextBold,
        ),
      ),
      body: Consumer(builder: (context, ref, _) {
        final myConversationsAV = ref.watch(myConversationsProvider);

        return myConversationsAV.when(
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => Center(
            child: Text(error.toString()),
          ),
          data: (conversations) {
            if (conversations.isEmpty) {
              return Center(
                child: Text('No conversations yet'),
              );
            }

            return ListView.builder(
              itemCount: conversations.length,
              itemBuilder: (context, index) {
                final conversation = conversations[index];
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: _ConversationListItem(conversation: conversation),
                );
              },
            );
          },
        );
      }),
    );
  }
}

class _ConversationListItem extends StatelessWidget {
  final Conversation conversation;

  const _ConversationListItem({
    Key? key,
    required this.conversation,
  }) : super(key: key);

  num get avatarIndex {
    num index = conversation.chatWithId % 7;
    return index == 0 ? 1 : index;
  }

  String get avatar => 'assets/images/avatars/$avatarIndex.png';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(ChatScreen.route(conversation: conversation));
      },
      child: Container(
        height: 90,
        //width: double.infinity,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 16),
        decoration: boxDecorationStyle,
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 75,
                width: 75,
                color: primaryColor,
                child: Image.asset(avatar),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      conversation.chatWith,
                      style: TextStyle(
                        fontSize: mediumText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      conversation.lastMessage?.message ?? 'No messages yet.',
                      style: TextStyle(
                        fontSize: defaultText,
                        color: Colors.black38,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
