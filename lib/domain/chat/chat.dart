import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String userAvatar,
    required bool isRead,
    required String time,
    required List<String> messages,
  }) = _Chat;
}
