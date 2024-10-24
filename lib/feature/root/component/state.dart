import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

enum Tabs { home, chat, likes, settings }

@freezed
abstract class RootState with _$RootState {
  const factory RootState({
    required Tabs selectedTab,
  }) = _RootState;

  factory RootState.initial() => const RootState(
    selectedTab: Tabs.chat,
  );
}
