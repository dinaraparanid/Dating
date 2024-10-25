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
      (event, emit) => emit(state.copyWith(
        effect: IncognitoShown(key: DateTime.now().millisecondsSinceEpoch),
      )),
    );

    on<CancelEffects>(
      (event, emit) => emit(state.copyWith(effect: const None())),
    );

    on<ChatClick>(
      (event, emit) => emit(state.copyWith(
        effect: NavigateToChat(
          model: event.chat,
          key: DateTime.now().millisecondsSinceEpoch,
        ),
      ))
    );

    add(Create());
  }
}

List<Chat> _stub() => const [
  Chat(
    userAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxAA8303_86z01TPPqxwesKe7q_OJSJgWxvg&s',
    isRead: true,
    time: '23 ч 43 мин',
    messages: ['Отлично выглядишь'],
  ),
  Chat(
    userAvatar: 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Prince_at_Coachella_%28cropped%29.jpg',
    isRead: false,
    time: '20 ч 40 мин',
    messages: ['Встретимся? Я рядом'],
  ),
  Chat(
    userAvatar: 'https://media.cnn.com/api/v1/images/stellar/prod/230515101146-the-weeknd-121222.jpg?c=original',
    isRead: true,
    time: '18 ч 40 мин',
    messages: ['Встретимся?'],
  ),
  Chat(
    userAvatar: 'https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgSCg1MA8=&rs=AOn4CLADLNZ64XZMOhvfep-dTNe4ITNcBQ',
    isRead: true,
    time: '09 ч 40 мин',
    messages: ['Давно тебя хочу'],
  ),
  Chat(
    userAvatar: 'https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg?w=385',
    isRead: true,
    time: '03 ч 04 мин',
    messages: ['Я в ванной.. Скинь фото...'],
  ),
  Chat(
    userAvatar: 'https://cdn.britannica.com/89/152989-050-DDF277EA/Johnny-Depp-2011.jpg',
    isRead: true,
    time: '01 ч 09 мин',
    messages: ['Привет'],
  ),
];
