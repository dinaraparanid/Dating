import 'package:dating/domain/chat/chat.dart';

sealed class ChatsEvent {}

final class Create extends ChatsEvent {}

final class IncognitoClick extends ChatsEvent {}

final class ChatClick extends ChatsEvent {
  final Chat chat;
  ChatClick({required this.chat});
}
