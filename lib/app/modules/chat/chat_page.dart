import 'package:chat_app/app/modules/chat/typing/typing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'chat_controller.dart';

class ChatPage extends StatefulWidget {
  final String title;
  const ChatPage({Key key, this.title = "Chat"}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends ModularState<ChatPage, ChatController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text(widget.title),
      ),
      body: Observer
      (
        builder:(_) => controller.isLoading
        ? Center
        (
          child: CircularProgressIndicator(),
        )
        : GestureDetector
        (
          onTap: ()
          {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column
          (
            children: <Widget>
            [
              Expanded
              (
                child: SingleChildScrollView
                (
                  child: Column
                  (
                    children: <Widget>
                    [
                      Center
                      (
                        child: Align
                        (
                          alignment: Alignment.topLeft, 
                          child: Observer 
                          (
                            builder:(_) => Text
                            (
                              "${controller.messages}",
                              style: TextStyle
                              (
                                fontSize: 25
                              ),
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ),
              TypingWidget()
            ],
          ),
        ),
      ),
    );
  }
}
