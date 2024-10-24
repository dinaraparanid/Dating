import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:dating/feature/chats/presentation/ui/incoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _avatarRadius = 30.0;

final class ChatUi extends StatelessWidget {
  final Chat model;
  const ChatUi({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: theme.dimensions.padding.extraMedium,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: _avatarRadius,
            backgroundImage: NetworkImage(model.userAvatar),
          ),

          SizedBox(width: theme.dimensions.padding.medium),

          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.timestampMs.toString(),
                  style: theme.typography.caption.copyWith(
                    color: theme.colors.text.primary,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  model.messages.last,
                  style: theme.typography.regular.copyWith(
                    color: theme.colors.text.primary,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),

          IncomingIcon(visible: !model.isRead),
        ],
      ),
    );
  }
}