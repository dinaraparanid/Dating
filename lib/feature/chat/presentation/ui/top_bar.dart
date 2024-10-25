import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/domain/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _avatarSize = 30.0;

PreferredSizeWidget ChatTopBar({
  required BuildContext context,
  required Chat chat,
}) {
  final theme = context.read<AppTheme>();

  return AppBar(
    backgroundColor: Colors.transparent,
    leadingWidth: double.infinity,
    leading: Row(
      children: [
        SizedBox(width: theme.dimensions.padding.small),

        IconButton(
          onPressed: Navigator.of(context).pop,
          style: IconButton.styleFrom(
            padding: EdgeInsets.all(theme.dimensions.padding.zero),
          ),
          icon: Image.asset(
            AppImages.loadPng('ic_back'),
            width: theme.dimensions.size.extraMedium,
            height: theme.dimensions.size.extraMedium,
          ),
        ),

        SizedBox(width: theme.dimensions.padding.extraSmall),

        CircleAvatar(
          radius: _avatarSize,
          backgroundImage: NetworkImage(chat.userAvatar),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: theme.dimensions.padding.small
        ),
        child: IconButton(
          onPressed: (){},
          icon: Image.asset(
            AppImages.loadPng('ic_kebab'),
            width: theme.dimensions.size.medium,
            height: theme.dimensions.size.medium,
          ),
        ),
      )
    ],
  );
}
