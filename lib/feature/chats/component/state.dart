import 'package:dating/core/ui/foundation/ui_state.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:dating/feature/chats/component/effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class ChatsState with _$ChatsState {
  const factory ChatsState({
    required UiState<int> likesCountState,
    required List<Chat> chats,
    ChatsEffect? effect,
  }) = _ChatsState;

  factory ChatsState.initial() => ChatsState(
    likesCountState: const UiState.initial(),
    chats: [],
  );
}

extension Properties on ChatsState {
  int get newLikes => likesCountState.getOrNull ?? 0;

  bool get hasNewLikes {
    final count = likesCountState.getOrNull;
    return count != null && count > 0;
  }
}
