import 'package:backendless_sdk/backendless_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'typing_controller.g.dart';

@Injectable()
class TypingController = _TypingControllerBase with _$TypingController;

abstract class _TypingControllerBase with Store {
  
  @observable
  String messenger;

  @observable
  TextEditingController textEditingController ;
  
  @action
  sendMessenger()
  {
    Backendless.messaging.publish
    (
      messenger, 
      channelName: "myChannel", 
      publishOptions: PublishOptions()
      ..headers = {"name":"Hiếu"}
      ..publisherId = "1"
    );
  }
}
