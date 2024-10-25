import 'dart:math';

import 'package:dating/core/ui/foundation/ui_state.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:dating/feature/chats/component/effect.dart';
import 'package:dating/feature/chats/component/event.dart';
import 'package:dating/feature/chats/component/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'event.dart';
export 'state.dart';

final class ChatsComponent extends Bloc<ChatsEvent, ChatsState> {
  ChatsComponent() : super(ChatsState.initial()) {
    on<Create>(
      (event, emit) {
        final unreadCount = Random.secure().nextInt(100) + 1;
        emit(state.copyWith(
          likesCountState: unreadCount.toUiState(),
          chats: _stub(),
        ));
      }
    );

    on<IncognitoClick>(
      (event, emit) => emit(state.copyWith(effect: const IncognitoShown())),
    );

    on<CancelEffects>(
      (event, emit) => emit(state.copyWith(effect: const None())),
    );

    on<ChatClick>(
      (event, emit) {
        // TODO: navigate to chat
      }
    );

    add(Create());
  }
}

List<Chat> _stub() => const [
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: true,
    timestampMs: 1729802723,
    messages: ['Отлично выглядишь'],
  ),
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: false,
    timestampMs: 1729802723,
    messages: ['Встретимся? Я рядом'],
  ),
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: true,
    timestampMs: 1729802723,
    messages: ['Встретимся?'],
  ),
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: true,
    timestampMs: 1729802723,
    messages: ['Давно тебя хочу'],
  ),
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: true,
    timestampMs: 1729802723,
    messages: ['Я в ванной.. Скинь фото...'],
  ),
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: true,
    timestampMs: 1729802723,
    messages: ['Привет'],
  ),
];
