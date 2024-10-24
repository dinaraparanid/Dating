import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/chats/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const _switcherIconWidth = 40.0;

final class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    final strings = AppLocalizations.of(context)!;
    final onEvent = context.read<ChatsComponent>().add;

    return Padding(
      padding: EdgeInsets.only(
        top: theme.dimensions.padding.extraMedium,
        left: theme.dimensions.padding.extraMedium,
        right: theme.dimensions.padding.extraMedium,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              strings.chats_title,
              style: theme.typography.h.h2.copyWith(
                color: theme.colors.text.primary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          IncognitoSwitcher(
            theme: theme,
            strings: strings,
            onClick: () => onEvent(IncognitoClick()),
          ),
        ],
      ),
    );
  }

  Widget IncognitoSwitcher({
    required AppTheme theme,
    required AppLocalizations strings,
    required void Function() onClick,
  }) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onClick,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(theme.dimensions.radius.small),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: theme.dimensions.padding.extraSmall,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              strings.off,
              style: theme.typography.body.copyWith(
                color: theme.colors.text.primary,
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(width: theme.dimensions.padding.medium),

            Image.asset(
              AppImages.loadPng('incognito_switcher'),
              width: _switcherIconWidth,
            )
          ],
        ),
      ),
    ),
  );
}