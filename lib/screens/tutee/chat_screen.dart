import 'package:ask_it/constants.dart';
import 'package:ask_it/core/chat/chat_controller.dart';
import 'package:ask_it/core/chat/chat_dto.dart';
import 'package:ask_it/core/chat/chat_model.dart' as model;
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:ndialog/ndialog.dart';

import '../../core/basic_error.dart';

class ChatScreen extends StatefulWidget {
  final model.Conversation conversation;

  const ChatScreen({
    super.key,
    required this.conversation,
  });

  static String routeName = '/chat';
  static Route<void> route({required model.Conversation conversation}) {
    return MaterialPageRoute(
      builder: (context) => ChatScreen(conversation: conversation),
    );
  }

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final types.User _user;
  late final types.User _chatWith;

  @override
  void initState() {
    super.initState();

    final tuteeId = widget.conversation.tuteeId;
    final tutorId = widget.conversation.tutorId;
    final chatWithId = widget.conversation.chatWithId;

    final isTutor = chatWithId == tuteeId;

    _user = types.User(
      id: isTutor ? tutorId.toString() : tuteeId.toString(),
    );
    _chatWith = types.User(
      id: isTutor ? tuteeId.toString() : tutorId.toString(),
    );
  }

  types.User whoIsSender(num id) => id.toString() == _user.id ? _user : _chatWith;

  @override
  Widget build(BuildContext context) {
    final messagesProvider = conversationMessagesProvider(widget.conversation.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.conversation.chatWith,
          style: mediumTextBold,
        ),
      ),
      body: Consumer(builder: (context, ref, _) {
        final messagesStream = ref.watch(messagesProvider);

        return StreamBuilder<model.ConversationMessages>(
            stream: messagesStream,
            builder: (context, snapshot) {
              var chatMessages = <types.Message>[];

              if (snapshot.hasData) {
                final messages = snapshot.data!;
                final sortedMessages = List<model.Message>.from(messages.messages);
                sortedMessages.sort((a, b) => b.createdAt.compareTo(a.createdAt));
                chatMessages = sortedMessages.map((m) {
                  return types.TextMessage(
                    id: m.id.toString(),
                    author: whoIsSender(m.senderId),
                    text: m.message,
                    createdAt: m.createdAt.add(const Duration(hours: 8)).millisecondsSinceEpoch,
                  );
                }).toList();
              }

              return Chat(
                theme: const DefaultChatTheme(
                  primaryColor: primaryColor,
                ),
                messages: chatMessages,
                onSendPressed: (message) {
                  ProgressDialog.future<fp.Either<BasicError, bool>>(
                    context,
                    future: ref.read(sendMessageProvider).call(
                          SendMessageDto(
                            conversationId: widget.conversation.id,
                            message: message.text,
                          ),
                        ),
                    message: Text('Sending message...'),
                    title: Text('Please wait...'),
                    dismissable: false,
                  ).then((value) {
                    if (value == null) return;

                    value.fold(
                      (l) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(l.message),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                      (r) {
                        ref.invalidate(messagesProvider);
                      },
                    );
                  });
                },
                user: _user,
              );
            });
      }),
      // body: GestureDetector(
      //   //closes kb
      //   onTap: () => FocusScope.of(context).unfocus(),
      //   child: Container(
      //     padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
      //     child: Column(
      //       children: [
      //         _buildSentMessage(),
      //         _buildRecievedMessage(),
      //         _buildSentMessage(),
      //         _buildSentMessage(),
      //         Expanded(child: SizedBox()),
      //         Container(
      //           padding: EdgeInsets.symmetric(horizontal: 8),
      //           height: 70,
      //           child: Row(
      //             children: <Widget>[
      //               Expanded(
      //                 child: TextField(
      //                   decoration: InputDecoration(
      //                     hintText: 'Send a Message',
      //                     isDense: true,
      //                     filled: true,
      //                     fillColor: lightColor,
      //                     //Border when user Uses the Text Field
      //                     focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10.0),
      //                       borderSide: BorderSide(
      //                         color: lightColor,
      //                       ),
      //                     ),
      //                     //Default Border Color
      //                     enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10.0),
      //                       borderSide: BorderSide(
      //                         color: lightColor,
      //                         //width: 2.0,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               IconButton(
      //                 icon: Icon(Icons.arrow_forward_rounded),
      //                 iconSize: 25,
      //                 onPressed: () {},
      //               )
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class _buildSentMessage extends StatelessWidget {
  const _buildSentMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue[500],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text(
          'Paano ba gumawa ng loop',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _buildRecievedMessage extends StatelessWidget {
  const _buildRecievedMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFe5e5e5),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text(
          'First, declare a variable, then do something',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
