import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    final strings = AppLocalizations.of(context)!;

    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppImages.loadPng('ic_plus'),
            width: theme.dimensions.size.medium,
            height: theme.dimensions.size.medium,
          ),
        ),

        SizedBox(width: theme.dimensions.padding.small),

        Expanded(
          child: TextField(
            style: theme.typography.regular.copyWith(
              color: theme.colors.text.primary,
              fontWeight: FontWeight.w300,
            ),
            cursorColor: theme.colors.background.temptations,
            decoration: InputDecoration(
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(
                  vertical: theme.dimensions.padding.small,
                  horizontal: theme.dimensions.padding.medium,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.colors.border.primary),
                  borderRadius: BorderRadius.all(
                    Radius.circular(theme.dimensions.radius.extraSmall),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.colors.border.primary),
                  borderRadius: BorderRadius.all(
                    Radius.circular(theme.dimensions.radius.extraSmall),
                  ),
                ),
                hintText: strings.chat_input_placeholder,
                hintStyle: theme.typography.regular.copyWith(
                  color: theme.colors.text.secondary,
                  fontWeight: FontWeight.w300,
                ),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: theme.dimensions.size.medium,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.dimensions.padding.medium,
                  ),
                  child: Image.asset(AppImages.loadPng('incognito_alien')),
                )
            ),
          ),
        ),

        SizedBox(width: theme.dimensions.padding.small),

        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppImages.loadPng('ic_micro'),
            width: theme.dimensions.size.medium,
            height: theme.dimensions.size.medium,
          ),
        ),
      ],
    );
  }
}
