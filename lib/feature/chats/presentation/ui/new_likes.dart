import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/chats/component/component.dart';
import 'package:dating/feature/chats/presentation/ui/incoming.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const _previewSize = 60.0;

final class NewLikes extends StatelessWidget {
  const NewLikes({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ChatsComponent, ChatsState>(
    builder: (context, state) {
      final theme = context.read<AppTheme>();
      final strings = AppLocalizations.of(context)!;

      return Visibility(
        visible: state.hasNewLikes,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: theme.dimensions.padding.extraMedium,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.loadPng('new_likes'),
                width: _previewSize,
                height: _previewSize,
              ),

              SizedBox(width: theme.dimensions.padding.medium),

              Expanded(
                child: Text(
                  strings.chats_liked(state.newLikes),
                  style: theme.typography.regular.copyWith(
                    color: theme.colors.text.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              IncomingIcon(),
            ],
          ),
        ),
      );
    }
  );
}
