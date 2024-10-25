import 'dart:math';

import 'package:dating/core/ui/foundation/ui_state.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:dating/feature/chat/component/event.dart';
import 'package:dating/feature/chat/component/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class ChatComponent extends Bloc<ChatEvent, ChatState> {
  ChatComponent({required Chat model}) : super(ChatState.initial(model: model)) {
    on<OnCreate>(
      (event, emit) {
        final temptations = Random.secure().nextInt(10) + 1;

        emit(state.copyWith(
          commonTemptationsState: temptations.toUiState(),
          commonTemptationsVisible: temptations > 0,
        ));
      }
    );

    on<HideCommonTemptations>(
      (event, emit) => emit(state.copyWith(commonTemptationsVisible: false)),
    );

    add(OnCreate());
  }
}
