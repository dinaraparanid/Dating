import 'package:dating/feature/chats/component/event.dart';
import 'package:dating/feature/chats/component/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class ChatsComponent extends Bloc<ChatsEvent, ChatsState> {
  ChatsComponent() : super(ChatsState.initial()) {
    on<IncognitoClick>(
      (event, emit) {
        // TODO: show incognito
      }
    );

    on<ChatClick>(
      (event, emit) {
        // TODO: navigate to chat
      }
    );
  }
}