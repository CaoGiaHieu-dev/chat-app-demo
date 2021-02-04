import 'package:backendless_sdk/backendless_sdk.dart';
import 'package:chat_app/app/shared/constains/backendless.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

@Injectable()
class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {

  @observable
  bool isLoading = true;

  @observable
  String messages = "";

  _ChatControllerBase()
  {
    connection().whenComplete(() 
    {
      initListeners().whenComplete(() 
      {
        isLoading = false;
      });
      
    });
  }
  Future connection() async
  {
    await Backendless.setUrl(SERVER_URL);
    await Backendless.initApp
    (
      APP_ID,
      ANDROID_KEY,
      IOS_KEY
    );
  }

  Future initListeners() async {
    Channel channel = await Backendless.messaging.subscribe("myChannel");
    channel.addMessageListener(onMessageReceived);
  }

  void onMessageReceived(PublishMessageInfo messageInfo) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(messageInfo.timestamp);
    messages += "${time.hour}:${time.minute}:${time.second} ${messageInfo.headers['name']}: ${messageInfo.message}\n";
  }

}
