import 'package:chat_app/app/modules/chat/typing/typing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TypingWidget extends StatefulWidget 
{
  @override
  _TypingWidgetState createState() => _TypingWidgetState();
}

class _TypingWidgetState extends ModularState<TypingWidget,TypingController> {
  @override
  Widget build(BuildContext context) {
    return Container
    (
     padding: EdgeInsets.symmetric(horizontal: 8.0),
     height: 70.0,
     color: Colors.white,
     child: Row
     (
       children: <Widget>
       [
          IconButton
          (
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded
          (
            child: Observer
            (
              builder:(_) => TextField
              (
                controller: controller.textEditingController,
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value) 
                {
                  controller.messenger = value;
                },
                decoration: InputDecoration
                (
                  hintText: 'Send a message..',
                ),
              ),
            ),
          ),
          IconButton
          (
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () 
            {
              controller.sendMessenger();
              // FocusScope.of(context).unfocus();
              controller.textEditingController =TextEditingController()..text = '';
            }
          ),
       ],
     ),
   );
  }
}
