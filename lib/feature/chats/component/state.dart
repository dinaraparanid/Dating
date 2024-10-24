import 'package:dating/core/ui/foundation/ui_state.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class ChatsState with _$ChatsState {
  const factory ChatsState({
    required UiState<int> likesCount,
    required List<Chat> chats,
  }) = _ChatsState;

  factory ChatsState.initial() => const ChatsState(
    likesCount: UiState.initial(),
    chats: [],
  );
}
