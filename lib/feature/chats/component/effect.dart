import 'package:dating/domain/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect.freezed.dart';

@freezed
sealed class ChatsEffect with _$ChatsEffect {
  const factory ChatsEffect.incognitoShown({required int key}) = IncognitoShown;
  const factory ChatsEffect.navigateToChat({required Chat model, required int key}) = NavigateToChat;
  const factory ChatsEffect.none() = None;
}
