import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect.freezed.dart';

@freezed
sealed class ChatsEffect with _$ChatsEffect {
  const factory ChatsEffect.incognitoShown() = IncognitoShown;
  const factory ChatsEffect.none() = None;
}
