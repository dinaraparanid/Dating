import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/incognito/component/component.dart';
import 'package:dating/feature/incognito/presentation/ui/cancel.dart';
import 'package:dating/feature/incognito/presentation/ui/subscription/buy.dart';
import 'package:dating/feature/incognito/presentation/ui/subscription/row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const _previewWidth = 174.0;

final class IncognitoBottomSheetContent extends StatelessWidget {
  final void Function() onClose;
  const IncognitoBottomSheetContent({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) => BlocProvider<IncognitoComponent>(
    create: (context) => IncognitoComponent(),
    child: BlocBuilder<IncognitoComponent, void>(
      builder: (context, _) {
        final theme = context.read<AppTheme>();
        final strings = AppLocalizations.of(context)!;

        return Container(
          color: theme.colors.background.incognito,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: theme.dimensions.padding.extraMedium,
                  left: theme.dimensions.padding.extraMedium,
                  right: theme.dimensions.padding.extraMedium,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: CancelIcon(onClose: onClose),
                    ),

                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        AppImages.loadPng('incognito_purple'),
                        width: _previewWidth,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: theme.dimensions.padding.extraBig),

              Text(
                strings.incognito_title,
                style: theme.typography.body.copyWith(
                  color: theme.colors.text.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: theme.dimensions.padding.extraBig),

              Text(
                strings.incognito_description,
                style: theme.typography.regular.copyWith(
                  color: theme.colors.text.secondary,
                  fontWeight: FontWeight.w300,
                ),
              ),

              SizedBox(height: theme.dimensions.padding.extraBig),

              const SubscriptionRow(),

              SizedBox(height: theme.dimensions.padding.extraMedium),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.dimensions.padding.extraMedium,
                  ),
                  child: const BuyButton(),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
