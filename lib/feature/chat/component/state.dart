import 'package:dating/core/ui/foundation/ui_state.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    required Chat model,
    required UiState<int> commonTemptationsState,
    required bool commonTemptationsVisible,
  }) = _ChatState;

  factory ChatState.initial({required Chat model}) => ChatState(
    model: model,
    commonTemptationsState: const UiState.initial(),
    commonTemptationsVisible: false,
  );
}

extension Properties on ChatState {
  int get commonTemptations => commonTemptationsState.getOrNull ?? 0;
}
