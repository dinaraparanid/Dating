import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class CommonTemptations extends StatelessWidget {
  final int commonTemptations;
  final void Function() onClose;

  const CommonTemptations({
    super.key,
    required this.commonTemptations,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    final strings = AppLocalizations.of(context)!;

    return Container(
      color: theme.colors.background.temptations,
      padding: EdgeInsets.symmetric(
        vertical: theme.dimensions.padding.small,
        horizontal: theme.dimensions.padding.extraMedium,
      ),
      child: Row(
        children: [
          Image.asset(
            AppImages.loadPng('ic_rocket'),
            width: theme.dimensions.size.small,
          ),

          SizedBox(width: theme.dimensions.padding.extraSmall),

          Expanded(
            child: Text(
              strings.chat_common_temptations(commonTemptations),
              style: theme.typography.regular.copyWith(
                color: theme.colors.text.primary,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          IconButton(
            onPressed: onClose,
            icon: Image.asset(
              AppImages.loadPng('ic_cancel'),
              width: theme.dimensions.size.medium,
              height: theme.dimensions.size.medium,
              color: theme.colors.text.primary,
            ),
          ),
        ],
      ),
    );
  }
}
