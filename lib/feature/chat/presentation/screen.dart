import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:dating/feature/chat/component/component.dart';
import 'package:dating/feature/chat/component/event.dart';
import 'package:dating/feature/chat/component/state.dart';
import 'package:dating/feature/chat/presentation/ui/common_temptations.dart';
import 'package:dating/feature/chat/presentation/ui/message_input.dart';
import 'package:dating/feature/chat/presentation/ui/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class ChatScreen extends StatelessWidget {
  final Chat model;
  const ChatScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => ChatComponent(model: model),
    child: BlocBuilder<ChatComponent, ChatState>(
      builder: (context, state) {
        final theme = context.read<AppTheme>();
        final strings = AppLocalizations.of(context)!;
        final onEvent = context.read<ChatComponent>().add;

        return Scaffold(
          appBar: ChatTopBar(context: context, chat: state.model),
          backgroundColor: theme.colors.background.primary,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: theme.dimensions.padding.extraLarge
                ),
                child: Visibility(
                  visible: state.commonTemptationsVisible,
                  child: CommonTemptations(
                    commonTemptations: state.commonTemptations,
                    onClose: () => onEvent(HideCommonTemptations()),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: theme.dimensions.padding.extraMedium),
                  decoration: BoxDecoration(
                    color: theme.colors.background.content,
                    border: Border.all(
                      color: theme.colors.border.primary,
                      width: theme.dimensions.size.line.extraSmall,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(theme.dimensions.radius.extraSmall),
                      topRight: Radius.circular(theme.dimensions.radius.extraSmall),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: theme.dimensions.padding.large,
                        ),
                        child: Text(
                          strings.chat_empty_placeholder,
                          style: theme.typography.caption.copyWith(
                            color: theme.colors.text.secondary,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),

                      Expanded(child: ListView()),

                      const MessageInput(),

                      SizedBox(height: theme.dimensions.padding.extraMedium),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}