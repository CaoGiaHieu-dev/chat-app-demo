import 'package:chat_app/app/modules/chat/chat_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => 
  [
    ModularRouter(Modular.initialRoute , child: (_,args) => ChatPage())
  ];

  static Inject get to => Inject<ChatModule>.of();
}
