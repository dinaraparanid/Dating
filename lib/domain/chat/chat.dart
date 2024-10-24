import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String userAvatar,
    required bool isRead,
    required int timestampMs,
    required List<String> messages,
  }) = _Chat;
}
