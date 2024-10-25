import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/incognito/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    final strings = AppLocalizations.of(context)!;
    final component = context.read<IncognitoComponent>();

    return TextButton(
      onPressed: component.onBuyClick,
      style: TextButton.styleFrom(
        backgroundColor: theme.colors.button.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(theme.dimensions.radius.extraSmall),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: theme.dimensions.padding.extraMedium,
        ),
      ),
      child: Text(
        strings.incognito_buy,
        style: theme.typography.body.copyWith(
          color: theme.colors.text.primary,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
