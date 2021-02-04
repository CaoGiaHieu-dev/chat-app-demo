// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typing_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TypingController on _TypingControllerBase, Store {
  final _$messengerAtom = Atom(name: '_TypingControllerBase.messenger');

  @override
  String get messenger {
    _$messengerAtom.reportRead();
    return super.messenger;
  }

  @override
  set messenger(String value) {
    _$messengerAtom.reportWrite(value, super.messenger, () {
      super.messenger = value;
    });
  }

  final _$_TypingControllerBaseActionController =
      ActionController(name: '_TypingControllerBase');

  @override
  dynamic sendMessenger() {
    final _$actionInfo = _$_TypingControllerBaseActionController.startAction(
        name: '_TypingControllerBase.sendMessenger');
    try {
      return super.sendMessenger();
    } finally {
      _$_TypingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messenger: ${messenger}
    ''';
  }
}
